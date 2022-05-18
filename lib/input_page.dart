import 'package:flutter/material.dart';

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

class CustomCard extends StatelessWidget {
  CustomCard({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toUpperCase(),
            style: TextStyle(
                color: Colors.white30,
                fontSize: 17.0,
                fontWeight: FontWeight.bold)),
        Text(
          value,
          style:
              TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top : 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIconButton(buttonIcon: Icons.remove),
              CustomIconButton(buttonIcon: Icons.add)
            ],
          ),
        )
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({required this.buttonIcon});
  final IconData buttonIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      child: Icon(
        buttonIcon
      ),
      style: ElevatedButton.styleFrom(shape: CircleBorder(),primary: Colors.white30,fixedSize:Size(60.0,60.0)),
    );
  }
}

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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.child});
  final Color colour;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 220.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
