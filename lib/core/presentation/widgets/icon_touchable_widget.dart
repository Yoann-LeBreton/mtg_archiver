import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';

class IconTouchableWidget extends StatelessWidget {
  const IconTouchableWidget({
    required this.icon,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.onTap,
    this.iconSize,
    super.key,
  });

  final IconData icon;
  final double? iconSize;
  final double horizontalPadding;
  final double verticalPadding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: context.primaryColor,
        ),
      ),
    );
  }
}
