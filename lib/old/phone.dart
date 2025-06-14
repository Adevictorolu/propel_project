import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';
import 'package:propel_project/router/route.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 0, 69, 125),
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              Text(
                'Continue with phone',
                style: TextStyle(
                  color: Colorspage.buttoncolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(10),
              SvgPicture.asset(
                height: 70,
                'asset/img/illustration continue with phone.svg',
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "What's your phone\nnumber?",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Gap(20),
            Text(
              'We protect our community by making sure everyone on PROPEL is real',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Gap(40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 1.5, color: Colors.grey),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 400,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.phone,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  prefixIcon: Icon(
                    Icons.phone_android_rounded,
                    color: Colors.blue,
                  ),
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            Gap(100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock_rounded, color: Colors.white),
                Gap(10),
                Text(
                  "We never share this with anyone, and it won't be displayed on your profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  elevation: 10,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(RouteManager.c);
                  },
                  child: Icon(
                    Icons.play_arrow_sharp,
                    color: Colorspage.buttoncolor
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
