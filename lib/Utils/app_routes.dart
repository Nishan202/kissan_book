import 'package:flutter/material.dart';
import 'package:kissan_book/Screens/add_location_screen.dart';
import 'package:kissan_book/Screens/category_screen.dart';
import 'package:kissan_book/Screens/login_screen.dart';
import 'package:kissan_book/Screens/otp_verification_screen.dart';
import 'package:kissan_book/Screens/registration_screen.dart';
import 'package:kissan_book/Screens/splash_screen.dart';

class AppRoutes {
  static final String SPLASH_SCREEN_ROUTE = '/splash';
  static final String REGISTRATION_SCREEN_ROUTE = '/registration';
  static final String LOGIN_SCREEN_ROUTE = '/login';
  static final String CATEGORY_SCREEN_ROUTE = '/category';
  static final String OTP_VERIFICATION_SCREEN_ROUTE = '/otpverification';
  static final String ADD_LOCATION_SCREEN_ROUTE = '/addlocation';

  static Map<String, WidgetBuilder> pageRoute = {
    SPLASH_SCREEN_ROUTE : (_) => SplashScreen(),
    REGISTRATION_SCREEN_ROUTE : (_) => RegistrationScreen(),
    CATEGORY_SCREEN_ROUTE : (_) => CategoryScreen(),
    OTP_VERIFICATION_SCREEN_ROUTE : (_) => OtpVerificationScreen(),
    LOGIN_SCREEN_ROUTE : (_) => LoginScreen(),
    ADD_LOCATION_SCREEN_ROUTE : (_) => AddLocationScreen()
  };
}