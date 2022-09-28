import 'package:copy_paste/application/bin/app/app.dart';
import 'package:copy_paste/domain/constants/enums.dart';
import 'package:flutter/material.dart';

Future<void> bootstrap({
  ApplicationContext applicationContext = ApplicationContext.development,
}) async {
  // ignore: todo
  // TODO: Setup any dependencies required for application to run smoothly
  runApp(CopyPasteApp(applicationContext: applicationContext));
}
