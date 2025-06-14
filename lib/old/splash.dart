import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const PropelApp());

class PropelApp extends StatelessWidget {
  const PropelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreens(),
    );
  }
}

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _waveController;

  final List<Map<String, String>> splashData = [
    {
      "title": "Welcome to PROPEL",
      "subtitle": "Empowering Growth Through Mentorship",
    },
    {
      "title": "Connect. Learn. Grow.",
      "subtitle": "Join a community of mentors and mentees driven by shared goals.",
    },
    {
      "title": "Start Your Journey",
      "subtitle": "Sign up and get matched with the right mentor or mentee.",
    }
  ];

  void _onNextPage() {
    if (_currentPage < splashData.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const RegistrationScreen()),
      );
    }
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _waveController = AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _waveController,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.shade900,
                      Colors.blueAccent.shade400,
                      Colors.lightBlue.shade300
                    ],
                  ),
                ),
                child: CustomPaint(
                  painter: WavePainter(_waveController.value),
                ),
              );
            },
          ),
          PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: splashData.length,
            itemBuilder: (context, index) {
              final item = splashData[index];
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      // ➤ ADD YOUR OWN ILLUSTRATION HERE BELOW THIS COMMENT
                      Container(
                        height: 260,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: const Center(
                          child: Text(
                            "Your Image Here",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      AnimatedWaveText(text: item["title"]!),
                      const SizedBox(height: 20),
                      Text(
                        item["subtitle"]!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentPage == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index ? Colors.white : Colors.white54,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _onNextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blueAccent.shade700,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    _currentPage == splashData.length - 1 ? "Get Started" : "Next",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedWaveText extends StatelessWidget {
  final String text;
  const AnimatedWaveText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.white, Colors.lightBlueAccent],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double value;
  WavePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    final path = Path();
    final waveHeight = 20.0;
    final waveLength = size.width / 1.5;

    path.moveTo(0, size.height);
    for (double i = 0; i <= size.width; i++) {
      path.lineTo(
        i,
        size.height - sin((i / waveLength + value * 2 * pi)) * waveHeight,
      );
    }
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Registration Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
