import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/theme/colors.dart';

abstract class AppColorScheme {
  static ColorScheme light() => const ColorScheme.light(
        primary: AppColors.black,
        secondary: AppColors.white,
        tertiary: AppColors.marineBlue,
      );

  static ColorScheme dark() => const ColorScheme.dark(
        primary: AppColors.white,
        secondary: AppColors.black,
        tertiary: AppColors.cyanBlue,
      );

  static ColorScheme highContrastDark() => const ColorScheme.highContrastDark();

  static ColorScheme highContrastLight() =>
      const ColorScheme.highContrastLight(primary: AppColors.blackLight);
}
