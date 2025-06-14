import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/router/route.dart';

class SplashmainScreen extends StatefulWidget {
  const SplashmainScreen({super.key});

  @override
  State<SplashmainScreen> createState() => _SplashmainScreenState();
}

class _SplashmainScreenState extends State<SplashmainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 3, 35, 215), Colors.blue],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  height: 300,
                  'asset/img/Propel_by_AkinAkingbogun_LOGO-removebg-preview.png',
                ),
                HomeButtons(
                  text: 'Continue with Google',
                  image:
                      'asset/img/Platform=Google, Shape=Original, Colored=True.svg',
                  onPressed: () {},
                ),
                HomeButtons(
                  text: 'Use mobile number',
                  image:
                      'asset/img/Platform=Google, Shape=Original, Colored=True.svg',
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(RouteManager.b);
                  },
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decorationColor: Colors.black,
                      ),
                    ),
                    Gap(20),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decorationColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    required this.text,
    required this.image,
    super.key,
    required this.onPressed,
  });

  final String text;
  final String image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          fixedSize: Size(400, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            Gap(10),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
