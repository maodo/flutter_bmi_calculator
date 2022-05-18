import 'package:flutter/material.dart';

import 'widgets/custom_card.dart';
import 'widgets/custom_widget.dart';
import 'widgets/reusable_card.dart';

const mainColor = 0xFF1D1E33;
const secondColor = 0xFF0B0D21;
const buttonColor = 0xFFEC1455;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
              colour: Color(mainColor),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      size: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'MALE',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
            )),
            Expanded(
                child: ReusableCard(
              colour: Color(mainColor),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female, size: 100.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'FEMALE',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
            ))
          ]),
          Expanded(
              child: ReusableCard(
                  colour: Color(mainColor), child: CustomWidget())),
          Row(children: [
            Expanded(
                child: ReusableCard(
              colour: Color(mainColor),
              child: CustomCard(label: "Weight",value: "74",),
            )),
            Expanded(
                child: ReusableCard(
                    colour: Color(mainColor), child: CustomCard(label: "Height",value: "183",),)),
          ]),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
            child: TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(65.0)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(buttonColor))),
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







