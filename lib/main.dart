import 'package:flutter/material.dart';
import 'package:propel_project/router/route.dart';
import 'package:propel_project/splashmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteManager.b,
      onGenerateRoute: RouteManager.generateroute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 111, 193),
        fontFamily: 'Montserrat'
      ),
      title: 'Flutter Demo',
      home: const SplashmainScreen(),
    );
  }
}