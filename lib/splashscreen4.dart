import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colorspage.bluecolor,
                      offset: Offset(12, 6),
                    ),
                    BoxShadow(color: Colorspage.purple, offset: Offset(0, 9)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset(
                  height: 200,
                  'asset/img/Coaching.png',
                  width: double.infinity,
                ),
              ),
              Gap(32),
              Text(
                'Join our Community',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                'Connect with experienced mentors and peers who can offer valuable insights and advice',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign up Now'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colorspage.buttoncolor,
                  elevation: 10,
                  fixedSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colorspage.buttoncolor,
                  elevation: 10,
                  fixedSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
