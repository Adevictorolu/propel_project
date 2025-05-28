import 'package:flutter/material.dart';
import 'package:propel_project/enablelocation.dart';
import 'package:propel_project/phone.dart';
import 'package:propel_project/splashmain.dart';
import 'package:propel_project/verifynumber.dart';

class RouteManager{
  static String a = '/';
  static String b = '/phone';
  static String c = '/verifyphone';
  static String d = '/enloc';

  static Route generateroute(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
         return PhoneScreen();
       },);
      case "/phone":
        return MaterialPageRoute(builder: (context) {
         return PhoneScreen();
       },);
       case "/verifyphone":
       return MaterialPageRoute(builder: (context) {
         return VerifynumberScreen();
       },);
       case "/enloc":
        return MaterialPageRoute(builder: (context) {
         return EnablelocationScreen();
       },);
      default:
        throw MaterialPageRoute(builder: (context) {
          return SplashmainScreen();
        },);
    }
  }
}