// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:edonation/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:edonation/Screens/pages/list_student_page.dart';
import 'package:edonation/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit Fat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: AnimatedSplashScreen(
            splash:
                Image.asset('assets/Images/splash.png', height: 300, width: 300),
            splashIconSize: 1200,
            //duration: 400000000000,
            duration: 3000,
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: Colors.white,
            nextScreen: WelcomeScreen()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
