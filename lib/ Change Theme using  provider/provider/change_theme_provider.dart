import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  void theme(bool value) {
    isDarkMode = value;
    notifyListeners();
  }
}
