import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  void theme(bool value) {
    isDarkMode = value;
    notifyListeners();
  }
}

class GobalThemeMode {
  static ThemeData lighttheme = ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.yellow, accentColor: Colors.pink));
  static ThemeData Darktheme = ThemeData(brightness: Brightness.light);
}
