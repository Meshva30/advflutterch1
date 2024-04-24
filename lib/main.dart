import 'package:advflutterch1/stepper/view/screen/stepper2.dart';
import 'package:advflutterch1/stepper/view/screen/stepper_example.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
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
      theme : ThemeData(
          brightness: Brightness.light,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red))
          )
      ),
      initialRoute: '/Stepper2',
      routes: {

        '/Stepper':(context) => StepperApp(),
        '/Stepper2':(context) => Stepper2(),
        '/theme':(context) => MyApp(),

      },
    );
  }
}