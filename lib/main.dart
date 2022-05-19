import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());
const primaryColor =  Color(0xFF0A0E21);
const backgroundColor = Color(0xFF0B0D21);
class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const InputPage(),
        '/result' : (context) => const ResultsPage()
      },
    );
  }
}


