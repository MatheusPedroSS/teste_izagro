import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String text;
  final String pathImage;
  const QuestionCard({required Key key, required String this.text, required String this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Row(
            children: [
              Image.asset(
                pathImage,
                width: 170,
                height: 170,
              ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        );
  }
}
