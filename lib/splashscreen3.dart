import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
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
                    // color: Colorspage.bluecolor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Image.asset(
                    'asset/img/Proven Self-Leadership Strategies To Unlock Your True Potential.png',
                    width: double.infinity,
                  ),
                ),
                Gap(32),
                Text(
                  'Streamline your Mentorship Schedules',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Simplify your tasks and focus on what matters most with our intuitive tools and feature',
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
                SvgPicture.asset('asset/img/Pavigation (1).svg'),
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