import 'package:flutter/material.dart';
import 'package:rentcarapp/presentation/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _isGetStartedPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            top: 0,
            right: _isGetStartedPressed ? -350 : -30,
            child: Image.asset(
              'assets/voiture1.jpeg',
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 - 80,
            left: 16,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'DRIVE ',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Anton',
                    ),
                  ),
                  TextSpan(
                    text: 'YOUR',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Anton',
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.1
                        ..color = Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: '\nDREAMS,\nON-DEMAND',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Anton',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.733,
            right: 18,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isGetStartedPressed = true;
                });

                Future.delayed(Duration(milliseconds: 500), () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                });
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 49, vertical: 30),
                backgroundColor: Color(0xFFB4EB35),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
              ),
              child: Text(
                'GET STARTED',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            bottom: 16,
            left: _isGetStartedPressed ? -325 : -25,
            child: Image.asset('assets/voiture2.jpg', height: 150, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
