import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:rentcarapp/data/car_data.dart';
import 'package:rentcarapp/presentation/screens/deteil_screen.dart';
import 'detail_car.dart';

class CarCard extends StatelessWidget {
  final Car car;

  CarCard({required this.car});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      closedElevation: 0,
      closedBuilder: (context, openContainer) {
        return GestureDetector(
          onTap: openContainer,
          child: Container(
            width: 340,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [BoxShadow(color: Colors.black12)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    child: Text(car.period, style: TextStyle(color: Colors.white)),
                  ),
                ),
                Center(child: Image.asset(car.imageUrl, fit: BoxFit.cover, height: 160)),
                Center(
                  child: Text(car.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        );
      },
      openBuilder: (context, _) => DetailScreen(),
      transitionDuration: Duration(seconds: 1),
    );
  }
}

class CarListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return Padding(
            padding: EdgeInsets.only(right: 16),
            child: CarCard(car: car),
          );
        },
      ),
    );
  }
}
