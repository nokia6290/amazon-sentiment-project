# joiner_app_test_chuck_norris

A new Flutter project for Joiner technical interview

# Getting Started

# Requirements:
- Flutter 3.16.0
- Dart 3.2.0
- Internet
- Physical Android or iOS or Emulator (iOS, Android)
- Run `flutter pub get`
- Run `flutter pub run build_runner build --delete-conflicting-outputs`
- Run project via IDE (Android studio) main.dart or `flutter run`


# Useful commands

# 01 First time project run on terminal
- `flutter pub run build_runner build --delete-conflicting-outputs`

# 02 Generate intl18
- `dart run intl_utils: generate`

# 03 might require setting manually (check version on pubspec)
-`flutter pub global activate intl_utils 2.8.5`

# 04 Format dart code with 120 lines
- `dart format --line-length 120 .`

# 05 To generate app launch icon
- `dart run icons_launcher:create`

# 06 Format dart code with 120 lines:
- `dart format --line-length 120 .`

# 07 Build release android apk
- `flutter build apk --release`