import 'package:flutter/material.dart';

class CarSpecsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSpecItem(null, '3996', 'assets/icon1.png'), 
        SizedBox(width: 16),
        _buildSpecItem(Icons.speed_outlined, '318 km/h'),
        SizedBox(width: 16),
        _buildSpecItem(Icons.settings, 'Auto'),
      ],
    );
  }

  Widget _buildSpecItem(IconData? icon, String text, [String? imagePath]) {
    return Container(
      width: 110,
      height: 95,
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.white, width: 0.3), 
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2), 
            child: imagePath != null
                ? ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white, 
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(imagePath, width: 24, height: 24),
                  )
                : Icon(icon, color: Colors.white),
          ),
          SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
