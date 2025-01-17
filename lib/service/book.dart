import 'dart:io';

import 'package:zen_reader/dao/book.dart';
import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:zen_reader/main.dart';
import 'package:zen_reader/models/book.dart';
import 'package:zen_reader/utils/get_base_path.dart';
import 'package:zen_reader/utils/log/common.dart';
import 'package:zen_reader/page/reading_page.dart';
import 'package:zen_reader/utils/import_book.dart';
import 'package:zen_reader/utils/toast/common.dart';
import 'package:epubx/epubx.dart';
import 'package:flutter/material.dart';


Future<Book> importBook(File file) async {
  try {
    EpubBookRef epubBookRef = await EpubReader.openBook(file.readAsBytesSync());
    String author = epubBookRef.Author ?? 'Unknown Author';
    String title = epubBookRef.Title ?? 'Unknown';

    final cover = await epubBookRef.readCover();
    final newBookName =
        '${title.length > 20 ? title.substring(0, 20) : title}-${DateTime.now().millisecond.toString()}'
            .replaceAll(' ', '_');

    final relativeFilePath = 'file/$newBookName.epub';
    final filePath = getBasePath(relativeFilePath);
    final relativeCoverPath = 'cover/$newBookName.png';
    final coverPath = getBasePath(relativeCoverPath);

    await file.copy(filePath);
    saveImageToLocal(cover, coverPath);

    Book book = Book(
        id: -1,
        title: title,
        coverPath: relativeCoverPath,
        filePath: relativeFilePath,
        lastReadPosition: '',
        readingPercentage: 0,
        author: author,
        isDeleted: false,
        rating: 0.0,
        createTime: DateTime.now(),
        updateTime: DateTime.now());
    book.id = await insertBook(book);
    AnxToast.show(navigatorKey.currentContext!.serviceImportSuccess);
    return book;
  } catch (e) {
    AnxToast.show(
        'Failed to import book, please check if the book is valid\n[$e]',
        duration: 5000);
    AnxLog.severe('Failed to import book\n$e');
    return Book(
      id: -1,
      title: 'Unknown',
      coverPath: '',
      filePath: '',
      lastReadPosition: '',
      readingPercentage: 0,
      author: '',
      isDeleted: false,
      rating: 0.0,
      createTime: DateTime.now(),
      updateTime: DateTime.now(),
    );
  }
}

void openBook(BuildContext context, Book book, Function updateBookList) {
  book.updateTime = DateTime.now();
  updateBook(book);
  Future.delayed(const Duration(seconds: 1), () {
    updateBookList();
  });

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ReadingPage(key: readingPageKey, book: book),
    ),
  ).then((result) {
    if (result != null) {
      Map<String, dynamic> resultMap = result as Map<String, dynamic>;
      book.lastReadPosition = resultMap['cfi'];
      book.readingPercentage = resultMap['readProgress'];
      updateBook(book);
      updateBookList();
    }
  });
}

void updateBookRating(Book book, double rating) {
  book.rating = rating;
  updateBook(book);
}
