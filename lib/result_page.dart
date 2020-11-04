import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'contianrCard.dart';
import 'lastbutton.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String BMInum;
  final String BMIRuselt;
  final String BMI_interpretion;

  ResultPage(
      {@required this.BMInum,
      @required this.BMIRuselt,
      @required this.BMI_interpretion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ContinarCard(
                colour: kActivecolorOFcontainar,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      BMIRuselt.toUpperCase(),
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      BMInum,
                      style: kNumberResult,
                    ),
                    Text(
                      BMI_interpretion,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: LastButton(
              Buttontitle: 'Re-Calculate',
              press: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
