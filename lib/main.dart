import 'package:flutter/material.dart';
import 'package:propel_project/splashmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      title: 'Flutter Demo',
      home: const SplashmainScreen(
        title: 'Propel by Akinakingbogun'),
    );
  }
}