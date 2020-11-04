import 'icons.dart';
import 'contianrCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constants.dart';
import 'result_page.dart';
import 'lastbutton.dart';
import 'iconcircalButton.dart';
import 'package:bmi_calculator/Calcolutor_Brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int heightnum = 180;
  int weight = 60;
  int age = 20;
  kGender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ContinarCard(
                    onpress: () {
                      setState(() {
                        selectedGender = kGender.male;
                      });
                    },
                    colour: selectedGender == kGender.male
                        ? kActivecolorOFcontainar
                        : kInactivecolorOFcontainar,
                    cardchild: Card_Child_Column(
                      text: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ContinarCard(
                    onpress: () {
                      setState(() {
                        selectedGender = kGender.female;
                      });
                    },
                    colour: selectedGender == kGender.female
                        ? kActivecolorOFcontainar
                        : kInactivecolorOFcontainar,
                    cardchild: Card_Child_Column(
                      text: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ContinarCard(
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: klabeltext,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heightnum.toString(),
                        style: kNumbertext,
                      ),
                      Text(
                        'cm',
                        style: klabeltext,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.amber[500],
                      activeTrackColor: Colors.blueGrey[700],
                      thumbColor: Colors.pinkAccent,
                      overlayColor: Colors.pinkAccent[400],
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                    ),
                    child: Slider(
                      value: heightnum.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newvalue) {
                        setState(() {
                          heightnum = newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActivecolorOFcontainar,
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: ContinarCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabeltext,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircelIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressIcon: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircelIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressIcon: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kActivecolorOFcontainar,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ContinarCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: klabeltext,
                        ),
                        Text(
                          age.toString(),
                          style: kNumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircelIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressIcon: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircelIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressIcon: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kActivecolorOFcontainar,
                  ),
                ),
              ],
            ),
          ),
          LastButton(
            Buttontitle: 'Calculate',
            press: () {
              CalcolutorBrain IBMResulte =
                  CalcolutorBrain(height: heightnum, weight: weight);
              setState(() {
                heightnum = 180;
                weight = 60;
                age = 20;
                selectedGender = null;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    BMInum: IBMResulte.getCal_BMI(),
                    BMI_interpretion: IBMResulte.getInterpretation(),
                    BMIRuselt: IBMResulte.getResult(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
