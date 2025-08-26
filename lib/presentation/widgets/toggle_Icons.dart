import 'package:flutter/material.dart';

class ToggleIcons extends StatefulWidget {
  @override
  _ToggleIconsState createState() => _ToggleIconsState();
}

class _ToggleIconsState extends State<ToggleIcons> {
  bool isHorizontalSelected = true;

  void toggleSelection() {
    setState(() {
      isHorizontalSelected = !isHorizontalSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.pause,
            color: isHorizontalSelected ? Colors.blue : Colors.grey,
            size: 35,
          ),
          onPressed: toggleSelection,
        ),
        IconButton(
          icon: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.pause,
              color: isHorizontalSelected ? Colors.grey : Colors.blue,size: 35,
            ),
            
          ),
          onPressed: toggleSelection,
        ),
      ],
    );
  }
}