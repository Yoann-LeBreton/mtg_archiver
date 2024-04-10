import 'package:flutter/material.dart';

class SettingState {
  const SettingState({
    this.themeMode = ThemeMode.light,
  });

  final ThemeMode themeMode;

  SettingState copyWith({
    ThemeMode? themeMode,
  }) {
    return SettingState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
