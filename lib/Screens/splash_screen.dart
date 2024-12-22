import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kissan_book/Screens/registration_screen.dart';
import 'package:kissan_book/Utils/app_routes.dart';
import 'package:kissan_book/Utils/asset_managements.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), (){
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegistrationScreen()));
      Navigator.pushReplacementNamed(context, AppRoutes.REGISTRATION_SCREEN_ROUTE);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity, child: Image.asset(Assets.splash_screen, fit: BoxFit.cover,)),
    );
  }
}