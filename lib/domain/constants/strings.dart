class AppStrings {
  static const String appName = 'Copy Paste';
  static const String appVersion = String.fromEnvironment(
    'APP_VERSION',
    defaultValue: '1.0.0',
  );
}
