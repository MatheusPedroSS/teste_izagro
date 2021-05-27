import 'package:flutter/material.dart';
import 'package:teste_izagro/src/pages/register.dart';
import 'package:teste_izagro/src/pages/telaLogin.dart';

void main() {
  runApp(MyApp(key: Key('root'),));
}

class MyApp extends StatelessWidget {
  const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'login' : (context) => TelaLogin(key: Key('login'),),
        'register' : (context) => Register(key: Key('register'))
      },
      home: TelaLogin(key: Key("TelaLogin"),),
    );
  }
}

