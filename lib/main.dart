import 'package:flutter/material.dart';
import 'package:teste_izagro/src/TelaLogin.dart';

void main() {
  runApp(MaterialApp(
    title: "Quanto Custa",
    home: TelaLogin(key: Key("telaLogin"),),
  ));
}