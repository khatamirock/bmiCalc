import 'package:flutter/material.dart';
import 'resultPage.dart';

const kActiveColor = Color(0xFF1D1E33);
const kInactiveColor = Color(0xFF111328);
const kBackGroundColor = Color(0xFF0A0E21);
enum gender { male, female }
Color maleCardColor = kInactiveColor;
Color femaleCardColor = kInactiveColor;
gender selectedGen;
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.bold,
  letterSpacing: 6.0,
);
const kHighlightTextStyle = TextStyle(
  fontSize: 30.0,
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.w900,

  // letterSpacing: 6.0,
);

const kBottomButton = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF8D8E98),
  letterSpacing: 6.0,
);
const kBMItextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF8D8E98),
  letterSpacing: 6.0,
);

resultWithCOlor(Color color) {
  return TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
    color: color,
    letterSpacing: 6.0,
  );
}

class bottomButtonWidg extends StatelessWidget {
  bottomButtonWidg({@required this.onTap, @required this.buttonTitle});
  final String buttonTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButton,
          ),
        ),
        // add a box decoration with the upper border rounded
        decoration: BoxDecoration(
          color: Colors.pink[600],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}

class roundIconButton extends StatelessWidget {
  roundIconButton({@required this.icon, @required this.onPressed});
  IconData icon;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
