import 'package:flutter/material.dart';

class reuseableCard extends StatelessWidget {
  reuseableCard({@required this.colour, this.cardChild, this.onPress});
  final Function onPress;
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(20),
          // add a box decoration to the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colour,
          ),
        ),
      ),
    );
  }
}
