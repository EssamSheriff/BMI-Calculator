import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff006BB6),
        scaffoldBackgroundColor: Color(0xfaED174C),
      ),
      home: InputPage(),
    );
  }
}
