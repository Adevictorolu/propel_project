import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colorspage.bluecolor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(10),
                Text('Welcome back!', style: TextStyle(fontSize: 16)),
                Gap(27),
                Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 12.8),
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colorspage.buttoncolor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Gap(20),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 12.8),
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colorspage.buttoncolor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Gap(20),
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          top: 2,
                          bottom: 2,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility_off_rounded,
                            color: Colorspage.bluecolor,
                          ),
                        ),
                      ),
                      hintStyle: TextStyle(fontSize: 12.8),
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colorspage.buttoncolor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Gap(20),
                Text(
                  'Confirm Password',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 12.8),
                      hintText: 'Confirm your Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colorspage.buttoncolor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(5),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colorspage.buttoncolor,
                fixedSize: Size(double.maxFinite, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colorspage.gencolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
