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
  double _currentSliderValue = 120;
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
              height.toString(),
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 2.0),
              child: Text(
                "cm",
                style: TextStyle(fontSize: 25.0, color: Colors.white30),
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
              thumbColor: Color(buttonColor),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              activeTrackColor: Colors.white),
          child: Slider(
            inactiveColor: Colors.white10,
            value: _currentSliderValue,
            min: 120.0,
            max: 220.0,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
                height = value.round();
              });
            },
          ),
        )
      ],
    );
  }
}