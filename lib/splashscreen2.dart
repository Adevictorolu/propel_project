import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_project/myrouter/routes.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(RouteManager.d);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.b);
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Skip',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20),
              SvgPicture.asset(
                height: 250,
                width: double.infinity,
                'asset/img/illustration.svg',
              ),
              Text(
                'Numerous free\ntrial courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Gap(5),
              Text(
                'Free courses for you to\nfind your way to learning',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Gap(60),
              SvgPicture.asset(height: 6, 'asset/img/pavigation.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
