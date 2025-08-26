

// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:rentcarapp/presentation/screens/deteil_screen.dart';
import 'package:rentcarapp/presentation/screens/home_screen.dart';
import 'package:rentcarapp/presentation/screens/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        fontFamily: 'Exo',
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}