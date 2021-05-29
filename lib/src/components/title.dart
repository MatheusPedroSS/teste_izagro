import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;
  final double fontSize;
  const TextTitle(this.text ,{this.fontSize = 40});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: fontSize,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
