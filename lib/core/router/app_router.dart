import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/constants/route_list.dart';
import 'package:mtg_archiver/core/presentation/pages/main_page.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String get initialRoute => RouteList.home;

  List<Route> onGenerateInitialRoutes(String initialRoute) {
    return [getPageRoute(initialRoute, null)];
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    final String routeName = routeSettings.name ?? '';
    return getPageRoute(routeName, routeSettings.arguments);
  }

  Route getPageRoute(String routeName, Object? args) {
    switch (routeName) {
      case RouteList.home:
        return MaterialPageRoute(builder: (_) => const MainPage());
      default:
        return getErrorPage(routeName);
    }
  }

  Route getErrorPage(String routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}
