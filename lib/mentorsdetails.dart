import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MentorDetails extends StatefulWidget {
  const MentorDetails({super.key});

  @override
  State<MentorDetails> createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Mentor Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Gap(10),
          Container(
            width: double.infinity,
            height: 400,
            child: Image(image: AssetImage('asset/img/469717357_18029294267526943_1835797228880026636_n.jpg'),),
          )
        ],
      ),
    );
  }
}
