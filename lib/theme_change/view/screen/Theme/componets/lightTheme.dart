import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global_variable.dart';


CupertinoButton light_Theme_Button({required final VoidCallback toggle}) {
  return CupertinoButton(
    onPressed: () {
      toggle();
      isDarkMode = false;
    },
    child: Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: (isDarkMode)?Colors.pink.shade800:Colors.amber,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text('Light color',style: TextStyle(fontSize: 22,color:isDarkMode ? Colors.white:Colors.black),),
    ),
  );
}