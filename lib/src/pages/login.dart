import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/buttonNavigator.dart';
import 'package:teste_izagro/src/components/input.dart';
import 'package:teste_izagro/src/components/title.dart';
import 'package:teste_izagro/src/models/user.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({required Key key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  User user = new User();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 16, left: 16, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/undraw_lightbulb_moment_evxr.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        TextTitle('Login'),
                        Input(
                          key: Key("inputLogin"),
                          hintText: "Email",
                          isPassword: false,
                          onSubmitted: (value) => {
                            user.setEmail(value.toString())
                          },
                        ),
                        Input(
                          key: Key("InputSenha"),
                          hintText: "Senha",
                          isPassword: true,
                          onSubmitted: (value) => user.setSenha(value.toString()),
                        ),
                        ButtonNavigator(
                          text: 'Entrar',
                          color: Color.fromRGBO(104, 52, 254, 1),
                          route: 'home',
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: InkWell(
                            child: Text('Não tem uma conta? Clique aqui'),
                            onTap: () => {
                              Navigator.pushNamed(context, 'register')
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      )
    );
  }
}
