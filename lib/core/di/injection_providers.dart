import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/presentation/providers/settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'injection_providers.g.dart';

@riverpod
Dio dio(DioRef ref) => Dio();

///Settings
final StateProvider<SettingState> settingsProvider =
    StateProvider<SettingState>(
  (StateProviderRef<SettingState> ref) => const SettingState(),
);
