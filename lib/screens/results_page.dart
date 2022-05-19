import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/submit_button.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bmi results'.toUpperCase()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 38.0,left: 10.0),
              child: Text('Your result'.toUpperCase(),
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '22.1',
                    style:
                        TextStyle(fontSize: 95.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Text(
                      'You have a normal body weight. Good job !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SubmitButton(
              label: "Re-calculate",
              onPressed: () {
                Navigator.pop(context);
              }
            ),
          )
        ],
      ),
    );
  }
}
