import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/change_theme_provider.dart';
import 'package:advflutterch1/Contact_Us_Page_With_Interaction/view/screen/Contact_Us_Page.dart';
import 'package:advflutterch1/Photo_Gallery_With_Biometric_Authentication/view/gallery_screen.dart';
import 'package:advflutterch1/intro/provider/intro_provider.dart';
import 'package:advflutterch1/stepper/view/screen/stepper_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import ' Change Theme using  provider/provider/counter_provider.dart';
import ' Change Theme using  provider/view/screen/change_theme_using_provider.dart';
import ' Change Theme using  provider/view/screen/counter_screen.dart';
import 'Photo_Gallery_With_Biometric_Authentication/provider/gallery_provider.dart';
import 'intro/view/screen/intro1.dart';
import 'intro/view/screen/intro2.dart';
import 'intro/view/screen/intro3.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CounterProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ChangeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => IntroProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => GalleryProvider(),
      ),
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
      initialRoute: '/gallery',
      routes: {
        '/Stepper': (context) => StepperApp(),
        '/Light/dark': (context) => MyApp(),
        '/Counter': (context) => Counter(),
        '/ChangeTheme': (context) => ChangeTheme(),
        '/intro1': (context) => Intro1(),
        '/contact': (context) => Contact(),
        '/gallery': (context) => Gallery(),

      },
      // home: Provider.of<IntroProvider>(context, listen: true).isClicked
      //     ? Counter()
      //     : Intro1(),
    );
  }
}

