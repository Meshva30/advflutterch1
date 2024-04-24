import 'package:advflutterch1/theme_change/utils/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton dark_Theme_Button({required final VoidCallback toggle}) {
  return CupertinoButton(
    onPressed: () {
      toggle();
      isDarkMode = true;
    },
    child: Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: (!isDarkMode) ? Colors.red : Colors.blueGrey.shade600,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        'Dark Color',
        style: TextStyle(
            fontSize: 22, color: isDarkMode ? Colors.white : Colors.black),
      ),
    ),
  );
}
