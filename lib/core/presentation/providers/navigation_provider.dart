import 'package:mtg_archiver/core/presentation/providers/navigation_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_provider.g.dart';

@riverpod
class Navigation extends _$Navigation {
  @override
  NavigationState build() {
    return const NavigationState();
  }

  void onIndexChanged(NavbarItem navbarItem) {
    state = state.copyWith(navbarItem: navbarItem);
  }
}
