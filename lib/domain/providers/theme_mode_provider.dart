import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeModeProvider = ChangeNotifierProvider((ref) => ThemeModeProvider());

class ThemeModeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  // Getters
  ThemeMode get themeMode => _themeMode;
  bool get isLightMode => _themeMode == ThemeMode.light;

  // Setters
  setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  switchTheme() {
    _themeMode == ThemeMode.light
        ? _themeMode = ThemeMode.dark
        : _themeMode = ThemeMode.light;
    notifyListeners();
  }
}
