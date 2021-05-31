import 'package:flutter/material.dart';

class ButtonNavigator extends StatelessWidget {
  final String text;
  final Color color;
  final String route;

  const ButtonNavigator({required this.text, required  this.color, required this.route});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            padding: EdgeInsets.only(top: 19, bottom: 19),
          ),
          child: Text(text),
          onPressed: () => {
            Navigator.pushNamed(context, route)
          },
        ),
      )
    );
  }
}
