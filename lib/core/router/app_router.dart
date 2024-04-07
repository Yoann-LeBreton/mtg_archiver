import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/constants/number_constants.dart';
import 'package:mtg_archiver/core/constants/route_list.dart';
import 'package:mtg_archiver/core/presentation/animations/transition_page_route.dart';
import 'package:mtg_archiver/core/presentation/pages/main_page.dart';
import 'package:mtg_archiver/features/cards/presentation/pages/mtg_card_details_page.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String get initialRoute => RouteList.home;

  List<Route<dynamic>> onGenerateInitialRoutes(String initialRoute) {
    return <Route<dynamic>>[getPageRoute(initialRoute, null)];
  }

  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final String routeName = routeSettings.name ?? '';
    return getPageRoute(routeName, routeSettings.arguments);
  }

  Route<dynamic> getPageRoute(String routeName, Object? args) {
    switch (routeName) {
      case RouteList.home:
        return MaterialPageRoute<dynamic>(builder: (_) => const MainPage());
      case RouteList.cardDetails:
        final String cardId = (args as Map<String, dynamic>? ??
            <String, dynamic>{})[RouteList.argCardId] as String;
        final String cardName = (args as Map<String, dynamic>? ??
            <String, dynamic>{})[RouteList.argCardName] as String;
        return AxisTransitionPageRoute<void>(
          page: MtgCardDetailsPage(
            cardId: cardId,
            cardName: cardName,
          ),
          transitionType: SharedAxisTransitionType.scaled,
          transitionDuration: const Duration(
            milliseconds: NumberConstants.listItemOpenTransitionTimeMilliSec,
          ),
        );
      default:
        return getErrorPage(routeName);
    }
  }

  Route<dynamic> getErrorPage(String routeName) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}
