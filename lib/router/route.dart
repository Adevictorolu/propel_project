import 'package:flutter/material.dart';
import 'package:propel_project/enablelocation.dart';
import 'package:propel_project/ennotification.dart';
import 'package:propel_project/phone.dart';
import 'package:propel_project/splashmain.dart';
import 'package:propel_project/splashmain1.dart';
import 'package:propel_project/splashscreen1.dart';
import 'package:propel_project/splashscreen2.dart';
import 'package:propel_project/splashscreen3.dart';
class RouteManager{
  static String a = '/';
  static String b = '/splashscreen1';
  static String c = '/splashscreen2';
  static String d = '/splashscreen3';
  static String e = '/ennotification';
  static String f = '/ennotification';
  static String g = '/ennotification';
  static String h = '/ennotification';
  static String i = '/ennotification';

  static Route generateroute(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
         return SplashMain();
       },);
      case "/splashscreen1":
        return MaterialPageRoute(builder: (context) {
         return SplashScreen1();
       },);
       case "/splashscreen2":
       return MaterialPageRoute(builder: (context) {
         return SplashScreen2();
       },);
       case "/splashscreen3":
        return MaterialPageRoute(builder: (context) {
         return SplashScreen3();
       },);
       case "/ennotification":
        return MaterialPageRoute(builder: (context) {
         return EnnotificationScreen();
       },);
      default:
        throw MaterialPageRoute(builder: (context) {
          return SplashmainScreen();
        },);
    }
  }
}