import 'package:demo_project/rounter/animation_rounter.dart';
import 'package:demo_project/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashAnimationScreen extends StatefulWidget {
  @override
  _SplashAnimationScreenState createState() => _SplashAnimationScreenState();
}

class _SplashAnimationScreenState extends State<SplashAnimationScreen>
    with TickerProviderStateMixin {
  AnimationController controller;

  Animation<double> animation;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initScreen();
    });

    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.pink[50], Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Lottie.asset('assets/zoo_splash_v6.json'),
            SizedBox(
              height: 5,
            ),
            FadeTransition(
              opacity: animation,
              child: Text(
                'Khoi dep trai',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeTransition(
              opacity: animation,
              child: Text(
                'We dont like you, we like every one',
                style: GoogleFonts.aBeeZee(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _initScreen() async {
    final String destination = 'homescreen';
    if (destination == 'homescreen') {
      await Future.delayed(const Duration(seconds: 4));
    }

    Navigator.pushReplacement(
      context,
      SlideRightRoute(
        page: HomeScreen(),
      ),
    );
  }
}
