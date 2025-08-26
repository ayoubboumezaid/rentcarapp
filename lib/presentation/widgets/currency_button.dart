import 'package:flutter/material.dart';

class CurrencyButton extends StatelessWidget {
  final String currency;
  final String amount;

  CurrencyButton({required this.currency, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 53, 132, 250), borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$currency $amount',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white, size: 25),
              iconSize: 20,
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
