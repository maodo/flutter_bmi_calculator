import 'package:flutter/material.dart';

const buttonColor = 0xFFEC1455;

class CustomWidget extends StatefulWidget {
  const CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  int height = 180;
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
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "cm",
              style: TextStyle(fontSize: 25.0, color: Colors.white30),
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
              thumbColor: Color(buttonColor),
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              activeTrackColor: Colors.white),
          child: Slider(
            inactiveColor: Colors.white10,
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: (double value) {
              setState(() {
                height = value.round();
              });
            },
          ),
        )
      ],
    );
  }
}
