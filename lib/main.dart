import 'package:flutter/material.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';
import 'package:quiz_app/view/main_home_page/main_home_page.dart';
import 'package:quiz_app/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: MainHomePage(),
    );
  }
}

      
