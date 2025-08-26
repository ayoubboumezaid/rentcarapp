import 'package:flutter/material.dart';
import 'package:rentcarapp/presentation/widgets/car_list_view.dart';
import 'package:rentcarapp/presentation/widgets/currency_button.dart';
import 'package:rentcarapp/presentation/widgets/days_left_card.dart';
import 'package:rentcarapp/presentation/widgets/navbar.dart';
import 'package:rentcarapp/presentation/widgets/toggle_Icons.dart';
import '../widgets/profile_circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: Duration(seconds: 1), vsync: this);

    _animation = Tween<double>(
      begin: 400,
      end: 100,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Container(color: Color(0xFF106FFF)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Container(color: Colors.grey.withOpacity(0.1)),
          ),
          Positioned(
            top: 80,
            right: 40,
            child: CurrencyButton(currency: 'USD', amount: '3,620'),
          ),
          Positioned(top: 80, left: 40, child: ProfileCircle()),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                top: 60,
                left: _animation.value,
                child: Image.asset("assets/car2.png", width: 450, height: 350),
              );
            },
          ),
          Positioned(
            top: 200,
            left: 29,
            child: Text(
              "Ferrari SF90\nStradale🔥",
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(top: 355, left: 45, child: DaysLeftCard(daysLeft: 74, period: '3 Month')),
          Positioned(top: 450, right: 20, child: ToggleIcons()),
          Positioned(
            top: 455,
            left: 29,
            child: Text(
              "Available Cars",
              style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(bottom: 50, top: 500, left: 0, right: 0, child: CarListView()),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
