import 'package:flutter/material.dart';
import 'constants.dart';

class iconContent extends StatelessWidget {
  iconContent({this.icon, this.text});
  final icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // create a icon widget with color and size
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          // create a text style of bold text and 5 wordspace
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
