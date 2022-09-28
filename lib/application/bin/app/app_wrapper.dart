import 'package:flutter/material.dart';

class AppWrapper extends InheritedWidget {
  const AppWrapper({
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static AppWrapper of(BuildContext context) {
    final AppWrapper? result =
        context.dependOnInheritedWidgetOfExactType<AppWrapper>();
    return result!;
  }
}
