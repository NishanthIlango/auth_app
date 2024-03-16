import 'package:auth_app/helper/sized_box_helper.dart';
import 'package:auth_app/screen/authentication_screen.dart';
import 'package:auth_app/screen/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  static String routeName='/splashScreen';
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Simulating splash screen delay with Future.delayed
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => AuthenticationScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}