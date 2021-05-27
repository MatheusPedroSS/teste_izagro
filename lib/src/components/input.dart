import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Input extends StatefulWidget {
  final String hintText;
  const Input({required Key key, required this.hintText}) : super(key: key);

  @override
  _InputState createState() => _InputState(hintText);
}

class _InputState extends State<Input> {

  String _hintText;

  _InputState(this._hintText);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: _hintText,
        ),
        style: TextStyle(
            fontSize: 20
        ),
      ),
    );
  }
}
