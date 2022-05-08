import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'resultPage.dart';
import 'calculation_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 150;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Color(0xFF0A0E21),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                reuseableCard(
                  onPress: () {
                    setState(() {
                      selectedGen = gender.male;
                    });
                  },
                  colour: gender.male == selectedGen // the color property with
                      // ternary operator................
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: iconContent(
                    icon: Icons.male,
                    text: 'MALE',
                  ),
                ),
                reuseableCard(
                  onPress: () {
                    setState(() {
                      selectedGen = gender.female;
                    });
                  },
                  colour: gender.female == selectedGen
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: iconContent(icon: Icons.female, text: 'FE<ALE'),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                reuseableCard(
                  colour: kActiveColor,
                  cardChild: Column(
                    children: [
                      SizedBox(
                        height: 9.0,
                      ),
                      Container(
                        // add a padding to topLeft
                        padding: EdgeInsets.only(left: 10.0),

                        alignment: Alignment.topLeft,
                        child: Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kHighlightTextStyle,
                          ),
                          Text(
                            'CM',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 220.0,
                        activeColor: Colors.pink[600],
                        inactiveColor: Color(0xFF8D8E98),
                        thumbColor: Colors.pink[400],
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                reuseableCard(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(
                        height: 3.0,
                      ),
                      Expanded(
                        child: Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$weight',
                          style: kHighlightTextStyle,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: roundIconButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: roundIconButton(
                                  icon: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        value: weight.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            weight = newValue.round();
                          });
                        },
                        min: 30.0,
                        max: 200.0,
                        activeColor: Colors.pink[600],
                        inactiveColor: Color(0xFF8D8E98),
                        thumbColor: Colors.pink[400],
                      )
                    ],
                  ),
                ),
                reuseableCard(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(
                        height: 9.0,
                      ),
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Text(
                        '$age',
                        style: kHighlightTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: roundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: roundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
            bottomButtonWidg(
              onTap: () {
                Calculation calc = Calculation(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiResult: calc.CalculateBmi(),
                              resultText: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                              color: calc.getColor(),
                            )));
              },
              buttonTitle: 'CALCULATE',
            )
          ],
        ));
  }
}
