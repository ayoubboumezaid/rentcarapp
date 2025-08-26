import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.search, 'Search', 1),
          _buildNavItem(Icons.list, 'List', 2),
          _buildNavItem(Icons.settings, 'Settings', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Text(
              label,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17),
            ),
          SizedBox(height: isSelected ? 7.0 : 0.0),
          if (!isSelected)
            Icon(
              icon,
              color: Colors.grey,
              size: 30.0, // Icon size
            ),
          if (isSelected)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.circle, size: 6, color: Colors.blue.withOpacity(1.0)),
                SizedBox(width: 4),
                Icon(Icons.circle, size: 6, color: Colors.blue.withOpacity(0.5)),
                SizedBox(width: 4),
                Icon(Icons.circle, size: 6, color: Colors.blue.withOpacity(0.1)),
              ],
            ),
        ],
      ),
    );
  }
}
