import 'package:flutter/material.dart';


const buttonColor = 0xFFEC1455;
 double _currentSliderValue = 0;
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
            ),
          ],
        ),
        CustomSlider()
      ],
    );
  }
}


class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
 
  @override
  Widget build(BuildContext context) {
    return SliderTheme(data: SliderThemeData(thumbColor:Color(buttonColor),thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),activeTrackColor: Colors.white ),
      child: Slider(
        inactiveColor: Colors.white10,
        value: _currentSliderValue,
        max: 200,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
            print(_currentSliderValue);
          });
        },
      ),
    );
  }
}
