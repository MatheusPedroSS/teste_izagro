import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/buttonNavigator.dart';
import 'package:teste_izagro/src/components/subTitle.dart';
import 'package:teste_izagro/src/components/title.dart';

class Home extends StatelessWidget {
  const Home({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextTitle('Bem vindo!'),
                TextSubTitle('Somos uma plataforma que calcula quanto custa um aplicativo'),
                TextSubTitle('Se você é Desenvolvedor e não sabe quanto cobrar, vem comigo!'),
                ButtonNavigator(
                  text: 'Começar',
                  color: Colors.black,
                  route: 'questions',
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}
