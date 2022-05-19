import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({required this.buttonIcon, required this.onPressed});
  
  final IconData buttonIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child: Icon(
        buttonIcon
      ),
      style: ElevatedButton.styleFrom(shape: CircleBorder(),primary: Colors.white30,fixedSize:Size(60.0,60.0)),
    );
  }
}