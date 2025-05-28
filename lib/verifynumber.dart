import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';
import 'package:propel_project/router/route.dart';

class VerifynumberScreen extends StatefulWidget {
  const VerifynumberScreen({super.key});

  @override
  State<VerifynumberScreen> createState() => _VerifynumberScreenState();
}

class _VerifynumberScreenState extends State<VerifynumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(75),
            Text(
              'Verify your number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter the code we've sent by text to +234 8167002789",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(5),
                Text(
                  'Change',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Fillcode(),
                Gap(10),
                Fillcode(),
                Gap(10),
                Fillcode(),
                Gap(10),
                Fillcode(),
              ],
            ),
            Gap(160),
            Text(
              'This text should arrive within the next 30s',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(RouteManager.d);
                    },
                    child: Icon(
                      Icons.play_arrow_sharp,
                      color: Colorspage.buttoncolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Fillcode extends StatelessWidget {
  const Fillcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white),
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
      width: 60,
      height: 50,
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hintText: '  x',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
