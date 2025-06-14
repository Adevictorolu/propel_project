import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Login',
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
              'Mobile/Email',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12.8),
                  hintText: 'Enter Mobile or Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colorspage.buttoncolor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
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
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 2, bottom: 2),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_rounded, color: Colorspage.bluecolor,)),
                  ),
                  hintStyle: TextStyle(fontSize: 12.8),
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colorspage.buttoncolor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Gap(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colorspage.bluecolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Gap(15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colorspage.buttoncolor,
                fixedSize: Size(double.maxFinite, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colorspage.gencolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Gap(5),
            Center(
              child: Text(
                'Or',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Gap(5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colorspage.buttoncolor,
                fixedSize: Size(double.maxFinite, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Continue with Google',
                style: TextStyle(
                  color: Colorspage.gencolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Gap(12),
            Center(child: Text.rich(TextSpan(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              text: "Don't have an account?",  children: [
              TextSpan(text: ' Register', style: TextStyle(color: Colorspage.bluecolor, fontSize: 14, fontWeight: FontWeight.w500))
            ]))),
          ],
        ),
      ),
    );
  }
}
