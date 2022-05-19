import 'package:flutter/material.dart';

import 'widgets/custom_icon_button.dart';
import 'widgets/custom_widget.dart';
import 'widgets/icon_widget.dart';
import 'widgets/reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const secondColor = Color(0xFF0B0D21);
const buttonColor = Color(0xFFEC1455);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int weight = 60;
  int age = 20;

  void updateColour(Gender gender) {
    maleCardColor =
        (gender == Gender.male && maleCardColor == inactiveCardColor)
            ? activeCardColor
            : inactiveCardColor;
    femaleCardColor =
        (gender == Gender.female && femaleCardColor == inactiveCardColor)
            ? activeCardColor
            : inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          leading: Icon(Icons.menu),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(children: [
            Expanded(
                child: GestureDetector(
              onTap: () => {
                setState(() => {
                      updateColour(Gender.male),
                    })
              },
              child: ReusableCard(
                colour: maleCardColor,
                child: IconWidget(label: 'male', icon: Icons.male),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () => {
                setState(() => {
                      updateColour(Gender.female),
                    })
              },
              child: ReusableCard(
                colour: femaleCardColor,
                child: IconWidget(label: 'female', icon: Icons.female),
              ),
            ))
          ]),
          Expanded(
            child: ReusableCard(colour: activeCardColor, child: CustomWidget()),
          ),
          Row(children: [
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "weight".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      weight.toString(),
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(buttonIcon: Icons.remove, onPressed: () { 
                            setState(() => {
                              weight--
                            });
                           },),
                          CustomIconButton(buttonIcon: Icons.add, onPressed: () { 
                            setState(() => {
                              weight++
                            });
                           },)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("age".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white30,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold)),
                  Text(
                    age.toString(),
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(buttonIcon: Icons.remove, onPressed: () { 
                          setState(() => {
                            age--
                          });
                         },),
                        CustomIconButton(buttonIcon: Icons.add, onPressed: () { 
                          setState(() => {
                            age++
                          });
                         },)
                      ],
                    ),
                  )
                ],
              ),
            )),
          ]),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
            child: TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(65.0)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(buttonColor)),
              onPressed: () {},
              child: Text(
                'Calculate your bmi'.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
          )
        ]));
  }
}
