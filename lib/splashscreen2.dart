import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
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
                    'asset/img/download (28).png',
                    width: double.infinity,
                  ),
                ),
                Gap(32),
                Text(
                  'Connect. Learn. Grow',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Join a community of mentors and mentees driven by shared goals',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      color: Colorspage.buttoncolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SvgPicture.asset('asset/img/pavigation.svg'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      color: Colorspage.buttoncolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
