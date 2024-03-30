import 'package:flutter/material.dart';

class IconTouchableWidget extends StatelessWidget {
  const IconTouchableWidget({
    required this.icon,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.onTap,
    super.key,
  });

  final IconData icon;
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
        child: Icon(icon),
      ),
    );
  }
}
