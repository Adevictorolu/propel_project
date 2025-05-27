import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "What's your phone\nnumber?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Gap(20),
          Text(
            'We protect our community by making sure everyone on PROPEL is real',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Gap(40),
          TextField(
            decoration: InputDecoration(
              constraints: BoxConstraints(
                maxWidth: 400,
                maxHeight: 50
              ),
              hintText: 'Phone number',
              prefixIcon: Icon(
                Icons.phone_android_rounded,
                color: Colors.blue,
              ),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
