import 'package:flutter/material.dart';
import 'package:propel_project/old/splashscreen2.dart';
import 'package:propel_project/splashscreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: RouteManager.a,
      // onGenerateRoute: RouteManager.generateroute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      title: 'Professional Mentorship Program for Emerging Leader',
      home: const SplashScreen2(),
    );
  }
}