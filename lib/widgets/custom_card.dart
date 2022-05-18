import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toUpperCase(),
            style: TextStyle(
                color: Colors.white30,
                fontSize: 17.0,
                fontWeight: FontWeight.bold)),
        Text(
          value,
          style:
              TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top : 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIconButton(buttonIcon: Icons.remove),
              CustomIconButton(buttonIcon: Icons.add)
            ],
          ),
        )
      ],
    );
  }
}