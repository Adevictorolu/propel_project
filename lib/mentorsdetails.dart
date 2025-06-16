import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class MentorDetails extends StatefulWidget {
  const MentorDetails({super.key});

  @override
  State<MentorDetails> createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Mentor Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                color: const Color.fromARGB(255, 227, 224, 224),
                width: double.infinity,
                height: 300,
                child: Image(
                  image: AssetImage(
                    'asset/img/469717357_18029294267526943_1835797228880026636_n.jpg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mr Akinakingbogun',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Gap(2),
                              Text(
                                'Mentor for Personal Development',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            height: 40,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  color: Colorspage.buttoncolor,
                                  onPressed: () {},
                                  icon: Icon(Icons.message_rounded),
                                ),
                                Gap(2),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.workspaces_filled,
                                    color: Colorspage.buttoncolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_attraction_sharp,
                                color: Colorspage.buttoncolor,
                                size: 30,
                              ),
                              Gap(5),
                              Text(
                                '300+ People\nfollows him',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin,
                                color: Colorspage.buttoncolor,
                                size: 30,
                              ),
                              Gap(5),
                              Text(
                                '3 yr+\nExperience',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.stars,
                                color: Colorspage.buttoncolor,
                                size: 30,
                              ),
                              Gap(5),
                              Text(
                                '4.5\nRating',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Gap(20),
            Text(
              'About Akinakingbogun',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Gap(10),
            Text(
              "He probably looks far too serious for your regular guy, but Akin is a bit of an all-rounder with a witty sense of humor.\nAkin is a graduate of Civil Engineering from the Obafemi Awolowo University Ile Ife, with a cognate 20 years of work experience mostly in engineering consulting and the oil and gas downstream and the commercial banking industry. \nAkin is a registered and COREN certified engineer who holds a masters degree in Water and Environmental Engineering from the University of Lagos in 2007.\nHe also earned his stripes in business(marketing) with an MBA from the Obafemi Awolowo University Ile Ife, same year he completed his Senior Management Programme (SMP) at the Lagos Business School Pan Atlantic University, Lagos.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            Gap(20),
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
                  'Book a Schedule',
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
      ),
    );
  }
}
