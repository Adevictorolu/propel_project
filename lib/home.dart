import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'asset/img/Propel_by_AkinAkingbogun_LOGO-removebg-preview.png',
                        ),
                      ),
                      Gap(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Akinakingbogun12',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Gap(3),
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_alert_rounded),
                    iconSize: 22,
                    color: Colorspage.bluecolor,
                  ),
                ],
              ),
              Gap(10),
              TextFormField(
                decoration: InputDecoration(
                  border: TextBorder(),
                  enabledBorder: TextBorder(),
                  focusedBorder: TextBorder(),
                  errorBorder: TextBorder(),
                  hintText: 'Propel AI, ask me anything',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, size: 20),
                  ),
                  suffixIcon: Icon(
                    Icons.location_on_sharp,
                    size: 20,
                    color: Colorspage.bluecolor,
                  ),
                ),
              ),
              Gap(8),
              Text(
                'Explore Courses',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Gap(8),
              Listboxes(),
              Gap(8),
              Listboxes(),
              Gap(8),
              Text(
                'Best-rated Mentors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Gap(8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                    Mentorsfields(),
                    Gap(10),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 180,
              //   height: 240,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return Mentorsfields();
              //     },
              //     separatorBuilder: (context, index) {
              //       return Gap(10);
              //     },
              //     itemCount: 8,
              //   ),
              // ),
              Gap(8),
              Text(
                'Top Picks in various fields',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Gap(8),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        fit: BoxFit.fill,
                        'asset/img/507724456_1611037186399339_3578774914377759853_n.jpg',
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colorspage.bluecolor),
                                  Gap(1),
                                  Text('4.5'),
                                ],
                              ),
                            ),
                            Container(
                              width: 20,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colorspage.bluecolor),
                                  Gap(1),
                                  Text('4.5'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder TextBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.black),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
  }
}

class Mentorsfields extends StatelessWidget {
  const Mentorsfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 240,
      decoration: BoxDecoration(
        color: Colorspage.bluecolor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/img/mrAkin.jpg'),
            radius: 89,
          ),
          Gap(2),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colorspage.gencolor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'Mr Akinakingbogun Mentor for Digital skill',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Listboxes extends StatelessWidget {
  const Listboxes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Containedchip(
            text: 'Food Business',
            icon: Icons.account_balance_sharp,
          ),
          Gap(10),
          Containedchip(
            text: 'Home based \nBusiness',
            icon: Icons.add_business,
          ),
          Gap(10),
          Containedchip(
            text: 'Service Business',
            icon: Icons.add_card_outlined,
          ),
          Gap(10),
          Containedchip(
            text: 'Agriculture',
            icon: Icons.airline_seat_flat_rounded,
          ),
          Gap(10),
          Containedchip(text: 'Digital Skill', icon: Icons.airplay),
          Gap(10),
          Containedchip(
            text: 'Retail Business',
            icon: Icons.breakfast_dining_rounded,
          ),
          Gap(10),
          Containedchip(text: 'Technology', icon: Icons.table_chart),
          Gap(10),
          Containedchip(text: 'Research', icon: Icons.home_repair_service),
          Gap(10),
          Containedchip(
            text: 'Litrature',
            icon: Icons.nest_cam_wired_stand_rounded,
          ),
          Gap(10),
          Containedchip(text: 'Skill Sets', icon: Icons.wordpress_rounded),
          Gap(10),
        ],
      ),
    );
  }
}

class Containedchip extends StatelessWidget {
  const Containedchip({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 235, 235),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 24, color: Colorspage.bluecolor),
            Gap(5),
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
