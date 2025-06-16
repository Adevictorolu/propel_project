import 'package:flutter/material.dart';
import 'package:propel_project/mentorsdetails.dart';

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
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'Professional Mentorship Program for Emerging Leader',
      home: MentorDetails(),
    );
  }
}
