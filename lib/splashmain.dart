import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashmainScreen extends StatefulWidget {
  const SplashmainScreen({super.key, required String title});

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
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 220, 105, 243),
                  Colors.purple,
                ],
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
                ),
                HomeButtons(
                  text: 'Use mobile number',
                  image:
                      '',
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
  const HomeButtons({required this.text, required this.image, super.key});

  final String text;
  final String image;
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
        onPressed: () {},
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
