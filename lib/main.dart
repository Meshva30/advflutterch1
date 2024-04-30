import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/change_theme_provider.dart';
import 'package:advflutterch1/stepper/view/screen/stepper_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import ' Change Theme using  provider/provider/counter_provider.dart';
import ' Change Theme using  provider/view/screen/change_theme_using_provider.dart';
import ' Change Theme using  provider/view/screen/counter_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CounterProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ChangeProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<ChangeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: false),
      darkTheme: ThemeData.dark(useMaterial3: false),
      initialRoute: '/Counter',
      routes: {
        '/Stepper': (context) => StepperApp(),
        '/Light/dark': (context) => MyApp(),
        '/Counter': (context) => Counter(),
        '/ChangeTheme': (context) => ChangeTheme(),
      },
    );
  }
}
