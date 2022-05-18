import 'package:flutter/material.dart';

const double iconSize = 100.0;
const double fontSize = 15.0;
const textStyle = TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
class IconWidget extends StatelessWidget {
  IconWidget({required this.label,required this.icon});

  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                label.toUpperCase(),
                style: textStyle,
              ),
            ),
          )
        ]);
  }
}