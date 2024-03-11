import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

enum Spacing {
  none(0),
  base(4),
  small(8),
  regular(12),
  medium(24),
  large(36),
  extraLarge(48);

  final double value;

  const Spacing(this.value);
}

class AppGap extends StatelessWidget {
  const AppGap({required this.isHeight, required this.size, super.key});
  final Spacing size;
  final bool isHeight;

  @override
  Widget build(BuildContext context) =>
      isHeight ? Gap(size.value.h) : Gap(size.value.w);

  factory AppGap.basicHeight() => const AppGap(
        isHeight: true,
        size: Spacing.base,
      );

  factory AppGap.basicWidth() => const AppGap(
        isHeight: false,
        size: Spacing.base,
      );

  factory AppGap.smallHeight() => const AppGap(
        isHeight: true,
        size: Spacing.small,
      );

  factory AppGap.smallWidth() => const AppGap(
        isHeight: false,
        size: Spacing.small,
      );

  factory AppGap.regularHeight() => const AppGap(
        isHeight: true,
        size: Spacing.regular,
      );

  factory AppGap.regularWidth() => const AppGap(
        isHeight: false,
        size: Spacing.regular,
      );

  factory AppGap.mediumHeight() => const AppGap(
        isHeight: true,
        size: Spacing.medium,
      );

  factory AppGap.mediumWidth() => const AppGap(
        isHeight: false,
        size: Spacing.medium,
      );

  factory AppGap.largeHeight() => const AppGap(
        isHeight: true,
        size: Spacing.large,
      );

  factory AppGap.largeWidth() => const AppGap(
        isHeight: false,
        size: Spacing.large,
      );

  factory AppGap.extralargeHeight() => const AppGap(
        isHeight: true,
        size: Spacing.extraLarge,
      );

  factory AppGap.extralargeWidth() => const AppGap(
        isHeight: false,
        size: Spacing.extraLarge,
      );
}
