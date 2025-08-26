// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:rentcarapp/Constants/constants.dart';

class ProfileCircle extends StatelessWidget {
 

  ProfileCircle();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Colors.blue.withOpacity(0.5), Colors.white],
          stops: [0.5, 0.5],
        ),
      ),
      padding: EdgeInsets.all(1),
      child: CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage(profileImagePath),
      ),
    );
  }
}
