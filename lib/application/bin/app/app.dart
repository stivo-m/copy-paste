import 'package:copy_paste/application/bin/app/app_wrapper.dart';
import 'package:copy_paste/domain/constants/enums.dart';
import 'package:copy_paste/domain/constants/strings.dart';
import 'package:copy_paste/presentation/router/route_generator.dart';
import 'package:flutter/material.dart';

class CopyPasteApp extends StatelessWidget {
  const CopyPasteApp({
    super.key,
    required this.applicationContext,
  });
  final ApplicationContext applicationContext;

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner:
            applicationContext != ApplicationContext.production,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
