import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';
import 'package:propel_project/router/route.dart';

class EnnotificationScreen extends StatefulWidget {
  const EnnotificationScreen({super.key});

  @override
  State<EnnotificationScreen> createState() => _EnnotificationScreenState();
}

class _EnnotificationScreenState extends State<EnnotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.notifications_sharp, color: Colors.white, size: 40),
              Gap(10),
              Text(
                'Allow notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Gap(20),
          Text(
            'We will let you know when you get new matches, messages and upcoming meetings with your mentor',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(130),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: Colorspage.buttoncolor,
                backgroundColor: Colors.white,
                fixedSize: Size(600, 50),
              ),
              onPressed: () {},
              child: Text(
                'Allow notification',
                style: TextStyle(
                  color: Colorspage.buttoncolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Gap(5),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(RouteManager.c);
            },
            child: Text(
              'Not now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
