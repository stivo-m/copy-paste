import 'package:copy_paste/presentation/pages/onboarding/onboarding_page.dart';
import 'package:copy_paste/presentation/router/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // ignore: todo
  // TODO: Restore when in use
  // final dynamic routeArgs = settings.arguments;

  switch (settings.name) {
    case AppRoutes.defaultPage:
      return MaterialPageRoute<OnboardingPage>(
        builder: (_) => const OnboardingPage(),
      );

    default:
      return MaterialPageRoute<OnboardingPage>(
        builder: (_) => const OnboardingPage(),
      );
  }
}
