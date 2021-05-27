import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Bem vindo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'Somos uma plataforma que calcula quanto custa um aplicativo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'Se você é Desenvolvedor e não sabe quanto cobrar, vem comigo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    child: Text("Começar"),
                    onPressed: () => {
                    },
                  ),
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}
