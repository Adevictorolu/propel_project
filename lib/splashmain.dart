import 'package:flutter/material.dart';

class SplashmainScreen extends StatefulWidget {
  const SplashmainScreen({super.key, required String title});

  @override
  State<SplashmainScreen> createState() => _SplashmainScreenState();
}

class _SplashmainScreenState extends State<SplashmainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            
            Image.asset('asset/img/Propel_by_AkinAkingbogun_LOGO-removebg-preview.png')
          ],
        ),
        // child: Container(
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       transform: GradientRotation(70),
        //       colors: [
        //         Color.fromARGB(255, 74, 20, 140),
        //         Color.fromARGB(29, 74, 20, 140)
        //       ],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomLeft,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
