import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.child, this.onTap});
  final Color colour;
  final Widget child;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 220.0,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}