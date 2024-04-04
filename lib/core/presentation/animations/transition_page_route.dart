import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AxisTransitionPageRoute<T> extends PageRouteBuilder<T> {
  AxisTransitionPageRoute({
    required Widget page,
    required SharedAxisTransitionType transitionType,
    super.transitionDuration = const Duration(seconds: 1),
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> primaryAnim,
            Animation<double> secondaryAnim,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: transitionType,
            child: child,
          ),
          reverseTransitionDuration: transitionDuration,
        );
}
