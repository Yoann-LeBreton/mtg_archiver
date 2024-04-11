import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_provider.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_state.dart';
import 'package:mtg_archiver/core/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:mtg_archiver/features/cards/presentation/pages/favorites_page.dart';
import 'package:mtg_archiver/features/cards/presentation/pages/search_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navIndex = ref.watch(navigationProvider);
    return Scaffold(
      primary: false,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 6,
              offset: const Offset(0, 2),
              color: context.tertiaryColor,
            ),
          ],
        ),
        child: const BottomNavigationBarWidget(),
      ),
      body: switch (navIndex.navbarItem) {
        NavbarItem.search => const SearchPage(),
        NavbarItem.favorites => const FavoritesPage(),
        NavbarItem.settings => const Center(
            child: Text('Not implemented'),
          ),
      },
    );
  }
}
