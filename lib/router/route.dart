import 'package:flutter/material.dart';
import 'package:propel_project/phone.dart';
import 'package:propel_project/splashmain.dart';

class RouteManager{
  static String a = '/';
  static String b = '/phone';

  static Route generateroute(RouteSettings settings){
    switch (settings.name) {
      case "/phone":
        return MaterialPageRoute(builder: (context) {
         return PhoneScreen();
       },);
      default:
        throw MaterialPageRoute(builder: (context) {
          return SplashmainScreen();
        },);
    }
  }
}