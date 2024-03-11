import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_provider.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_state.dart';
import 'package:mtg_archiver/core/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:mtg_archiver/features/search/presentation/pages/search_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navIndex = ref.watch(navigationProvider);
    return Scaffold(
      primary: false,
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: switch (navIndex.navbarItem) {
        NavbarItem.search => const SearchPage(),
        NavbarItem.favorites => const Center(
            child: Text('Not implemented'),
          ),
        NavbarItem.settings => const Center(
            child: Text('Not implemented'),
          ),
      },
    );
  }
}
