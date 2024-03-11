import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_provider.dart';
import 'package:mtg_archiver/core/presentation/providers/navigation_state.dart';

class BottomNavigationBarWidget extends ConsumerWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavigationState navIndex = ref.watch(navigationProvider);

    return BottomNavigationBar(
      elevation: 8,
      currentIndex: navIndex.index,
      items: NavbarItem.values
          .map(
            (NavbarItem item) => BottomNavigationBarItem(
              icon: item.icon,
              label: item.label(context),
            ),
          )
          .toList(),
      onTap: (int index) => ref
          .read(navigationProvider.notifier)
          .onIndexChanged(NavbarItem.values.elementAt(index)),
    );
  }
}
