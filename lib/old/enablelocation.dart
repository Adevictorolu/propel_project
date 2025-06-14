import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';
import 'package:propel_project/router/route.dart';

class EnablelocationScreen extends StatefulWidget {
  const EnablelocationScreen({super.key});

  @override
  State<EnablelocationScreen> createState() => _EnablelocationScreenState();
}

class _EnablelocationScreenState extends State<EnablelocationScreen> {
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
              Icon(Icons.location_on_sharp, color: Colors.white, size: 40),
              Gap(10),
              Text(
                'Enable location services',
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
            'We use your location to show you potential mentors for your field of interest',
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
                'Enable location',
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
              Navigator.of(context).pushReplacementNamed(RouteManager.e);
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
