// create a stateless class that have a column and a row inside a container
// the container is a flexbox container
// the column and row are flexbox items
// the column and row are centered
// the column and row are spaced evenly
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation,
      @required this.color});
  String bmiResult;
  String resultText;
  String interpretation;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
          backgroundColor: kBackGroundColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: reuseableCard(
                  colour: kActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('$resultText', style: kLabelTextStyle),
                      Text(
                        '$bmiResult',
                        style: resultWithCOlor(color),
                      ),
                      Text('$interpretation', style: kLabelTextStyle),
                    ],
                  ),
                )),
            bottomButtonWidg(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
            // Expanded(flex: 3, child: reuseableCard(colour: kActiveColor))
          ],
        ));
  }
}
