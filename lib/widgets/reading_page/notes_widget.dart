import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:zen_reader/widgets/reading_page/widget_title.dart';
import 'package:flutter/material.dart';

import 'package:zen_reader/models/book.dart';
import 'package:zen_reader/page/book_notes_page.dart';

class ReadingNotes extends StatelessWidget {
  const ReadingNotes({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgetTitle(context.navBarNotes, null),
          Expanded(
            child: ListView(children: [bookNotesList(book.id)]),
          ),
        ],
      ),
    );
  }
}
