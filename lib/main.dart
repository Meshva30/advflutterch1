import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/change_theme_provider.dart';
import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/counter_provider.dart';
import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/view/screen/change_theme_using_provider.dart';
import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/view/screen/counter_screen.dart';
import 'package:advflutterch1/stepper/view/screen/stepper2.dart';
import 'package:advflutterch1/stepper/view/screen/stepper_example.dart';
import 'package:advflutterch1/theme_change/utils/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ChangeProvider(),
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
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ChangeProvider>(context,listen: true).isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: GobalThemeMode.lighttheme,
      darkTheme: GobalThemeMode.Darktheme,

      initialRoute: '/changeTheme',
      routes: {
        '/Stepper': (context) => StepperApp(),
        '/Stepper2': (context) => Stepper2(),
        '/theme': (context) => MyApp(),
        '/counter': (context) => Counter(),
        '/changeTheme': (context) => Themeprovider(),
      },
    );
  }
}
