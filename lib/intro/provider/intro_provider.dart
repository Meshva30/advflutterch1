import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {
  bool isClicked = false;

  void onPressed() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isChecked', true);
  }

  Future<void> getResponse() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isClicked = preferences.getBool('isChecked') ?? false;
    notifyListeners();
  }


  IntroProvider() {
    getResponse();
  }
}