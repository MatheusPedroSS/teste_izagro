import 'package:flutter/material.dart';
import 'package:teste_izagro/src/pages/TelaLogin.dart';

void main() {
  runApp(MyApp(key: Key('root'),));
}

class MyApp extends StatelessWidget {
  const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TelaLogin(key: Key("TelaLogin"),),
      );
  }
}

