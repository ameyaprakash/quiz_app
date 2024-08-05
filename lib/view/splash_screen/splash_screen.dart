import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/utils/animation_constants.dart';
import 'package:quiz_app/view/dart_screenn/dart_screenn.dart';
import 'package:quiz_app/view/games_screen/games_screen.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';
import 'package:quiz_app/view/science_screen/science_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  
  void initState(){
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GamesScreen(),));
    },);
    super.initState();
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(AnimationConstants.splash_logo),
      ),
    );
  }
}