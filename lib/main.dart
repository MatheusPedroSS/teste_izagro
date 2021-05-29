import 'package:flutter/material.dart';
import 'package:teste_izagro/src/pages/home.dart';
import 'package:teste_izagro/src/pages/questions.dart';
import 'package:teste_izagro/src/pages/register.dart';
import 'package:teste_izagro/src/pages/login.dart';

void main() {
  runApp(MyApp(key: Key('root'),));
}

class MyApp extends StatelessWidget {
  const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (context) => TelaLogin(key: Key('login'),),
        'register' : (context) => Register(key: Key('register')),
        'home' : (context) => Home(key: Key('home')),
        'questions': (context) => Questions(key: Key('questions'))
      },
      home: TelaLogin(key: Key("TelaLogin"),),
    );
  }
}

