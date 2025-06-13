import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:skill_harvest_project/myrouter/routes.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(RouteManager.b);
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
                          fontWeight: FontWeight.w500,
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
                'asset/img/illustration_2.svg',
              ),
              Text(
                'Quick and easy\nlearning',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Gap(5),
              Text(
                'Easy and fast learning at\nany time to help you\nimprove various skills',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Gap(60),
              SvgPicture.asset(height: 6, 'asset/img/Pavigation (1).svg'),
            ],
          ),
        ),
      ),
    );
  }
}
