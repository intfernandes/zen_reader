import 'dart:io';

import 'package:zen_reader/utils/get_path/documents_path.dart';

Future<File> getLogFile() async {
  final logFileDir = await getDocumentsPath();
  final String logFilePath = '$logFileDir/zen_reader.log';
  final logFile = File(logFilePath);
  if (!logFile.existsSync()) {
    logFile.createSync();
  }
  return logFile;
}