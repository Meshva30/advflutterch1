

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../utils/global_variable.dart';
import 'componets/Themechages.dart';
import 'componets/darkTheme.dart';

import 'componets/lightTheme.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    void toggle() {
      setState(() {});
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isDarkMode) ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
          child: Container(
            height: 500,
            width: 350,
            alignment: Alignment.center,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  theme_Change_Text(),

                  light_Theme_Button(toggle: toggle),


                  dark_Theme_Button(toggle: toggle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}