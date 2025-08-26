import 'package:flutter/material.dart';
import 'package:rentcarapp/presentation/widgets/book_car_widget.dart';
import 'package:rentcarapp/presentation/widgets/car_specs.dart';
import 'package:rentcarapp/presentation/widgets/detail_car.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 155,
            left: 0,
            right: 0,
            top: 10,
            child: DetailCar(),
          ),
          Positioned(
            bottom: 108,
            left: 0,
            right: 0,
            child: CarSpecsWidget(), 
          ),
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: BookCarWidget(), 
          ),
        ],
      ),
    );
  }
}