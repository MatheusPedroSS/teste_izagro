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
                TextTitle(
                    text: 'Bem vindo!',
                    color: Colors.black
                ),
                TextSubTitle(
                    text: 'Somos uma plataforma que calcula quanto custa um aplicativo',
                    color: Colors.black
                ),
                TextSubTitle(
                    text: 'Se você é Desenvolvedor e não sabe quanto cobrar, vem comigo!',
                    color: Colors.black
                ),
                ButtonNavigator(
                  text: 'Começar',
                  color: Colors.black,
                  route: '',
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}
