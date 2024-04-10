import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/theme/app_text_styles.dart';

class AppTextTheme extends TextTheme {
  static TextTheme regular() => TextTheme(
        displayLarge: AppTextStyles.large32,
        displayMedium: AppTextStyles.medium28,
        displaySmall: AppTextStyles.regular24,
        headlineLarge: AppTextStyles.regular16,
        titleMedium: AppTextStyles.regular14,
        titleSmall: AppTextStyles.regular12,
        bodyLarge: AppTextStyles.regular12,
        bodyMedium: AppTextStyles.small12,
      );

  static TextTheme italic() => TextTheme(
        displayLarge: AppTextStyles.largeItalic32,
        displayMedium: AppTextStyles.mediumItalic28,
        displaySmall: AppTextStyles.italic24,
        headlineLarge: AppTextStyles.italic16,
        titleMedium: AppTextStyles.italic14,
        titleSmall: AppTextStyles.italic12,
        bodyLarge: AppTextStyles.italic12,
        bodyMedium: AppTextStyles.smallItalic12,
      );
}
