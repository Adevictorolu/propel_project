import 'package:flutter/material.dart';
import 'package:propel_project/router/route.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10),(){
      Navigator.of(context).pushNamed(RouteManager.a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Image.asset('asset/img/Propel_by_AkinAkingbogun_LOGO-removebg-preview.png', height: 250, width: double.infinity,)),
      )
    );
  }
}