import 'package:flutter/material.dart';


const buttonColor = Color(0xFFEC1455);

class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
      child: TextButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size.fromHeight(65.0)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor)),
        onPressed: onPressed,
        child: Text(
          label.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
      ),
    );
  }
}