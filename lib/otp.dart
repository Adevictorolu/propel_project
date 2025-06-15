import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'OTP Verification',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Gap(10),
          Text(
            'Enter the OTP sent to +234 8167002789',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Gap(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Otpbox(),
              Gap(9),
              Otpbox(),
              Gap(8),
              Otpbox(),
              Gap(8),
              Otpbox(),
            ],
          ),
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
                'Verify',
                style: TextStyle(
                  color: Colorspage.gencolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Gap(15),
          Center(
            child: Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                text: "Don't Recieved OTP?",
                children: [
                  TextSpan(
                    text: ' Resend',
                    style: TextStyle(
                      color: Colorspage.bluecolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Otpbox extends StatelessWidget {
  const Otpbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: TextFormField(
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colorspage.bluecolor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
