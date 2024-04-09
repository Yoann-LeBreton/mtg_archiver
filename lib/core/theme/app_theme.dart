import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/theme/app_color_scheme.dart';
import 'package:mtg_archiver/core/theme/app_text_theme.dart';
import 'package:mtg_archiver/core/theme/colors.dart';

abstract class AppTheme {
  static ThemeData light() => ThemeData(
        colorScheme: AppColorScheme.light(),
        textTheme: AppTextTheme.regular(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 10,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.white,
        ),
      );

  static ThemeData dark() => ThemeData(
        colorScheme: AppColorScheme.dark(),
        textTheme: AppTextTheme.regular(),
      );

  static ThemeData highContrast() => ThemeData(
        colorScheme: AppColorScheme.highContrastDark(),
        textTheme: AppTextTheme.regular(),
      );
}
