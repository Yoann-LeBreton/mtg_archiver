import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';

class NavigationState {
  const NavigationState({this.navbarItem = NavbarItem.search});

  final NavbarItem navbarItem;

  int get index => navbarItem.index;

  NavigationState copyWith({NavbarItem? navbarItem}) {
    return NavigationState(navbarItem: navbarItem ?? this.navbarItem);
  }
}

enum NavbarItem {
  search,
  favorites,
  settings,
}

extension NavbarItemX on NavbarItem {
  Icon get icon => switch (this) {
        NavbarItem.search => const Icon(Icons.search),
        NavbarItem.favorites => const Icon(Icons.favorite),
        NavbarItem.settings => const Icon(Icons.settings),
      };

  String label(BuildContext context) => switch (this) {
        NavbarItem.search => context.translate().bottomNavBarSearch,
        NavbarItem.favorites => context.translate().bottomNavBarFavorites,
        NavbarItem.settings => context.translate().bottomNavBarSettings,
      };
}
