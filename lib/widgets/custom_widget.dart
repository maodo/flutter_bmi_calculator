import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "height".toUpperCase(),
          style: TextStyle(
              color: Colors.white30,
              fontSize: 17.0,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "183",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 2.0),
              child: Text(
                "cm",
                style: TextStyle(fontSize: 25.0, color: Colors.white30),
              ),
            )
          ],
        )
      ],
    );
  }
}