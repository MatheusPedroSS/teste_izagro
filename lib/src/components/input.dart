import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String hintText;
  final Function onSubmitted;
  final bool isPassword;
  const Input({required Key key, required this.hintText, required this.onSubmitted, required this.isPassword}) : super(key: key);

  @override
  _InputState createState() => _InputState(hintText, onSubmitted, isPassword);
}

class _InputState extends State<Input> {

  final String _hintText;
  final Function onSubmitted;
  final bool _isPassword;

  _InputState(this._hintText, this.onSubmitted, this._isPassword);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        obscureText: _isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: _hintText,
        ),
        style: TextStyle(
            fontSize: 20
        ),
        onSubmitted: (value) {
          onSubmitted(value.toString());
        },
      ),
    );
  }
}
