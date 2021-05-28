import 'package:flutter/material.dart';

class TextSubTitle extends StatelessWidget {
  final String text;
  final Color color;
  const TextSubTitle({required this.text, required  this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 20,
          color: color,
        ),
      ),
    );
  }
}
