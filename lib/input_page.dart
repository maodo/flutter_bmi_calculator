import 'package:flutter/material.dart';

const mainColor = 0xFF1D1E33;

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
        body: Column(children: [
          Row(children: [
            Expanded(child: ReusableCard(colour: Color(mainColor),)),
            Expanded(child: ReusableCard(colour: Color(mainColor),))
          ]),
          Expanded(child: ReusableCard(colour: Color(mainColor),)),
          Row(children: [
            Expanded(child: ReusableCard(colour: Color(mainColor),)),
            Expanded(child: ReusableCard(colour: Color(mainColor),))
          ])
        ]));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 220.0,
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
