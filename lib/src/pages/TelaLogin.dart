import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/input.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({required Key key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Padding(
            padding: EdgeInsets.only(top: 50, right: 16, left: 16, bottom: 16),
            child: Column(
              children: [
                Image.asset("images/undraw_lightbulb_moment_evxr.png"),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 36,
                          color: Colors.black,
                        ),
                      ),
                      Input(
                        key: Key("inputLogin"),
                        hintText: "Email",
                      ),
                      Input(
                        key: Key("InputSenha"),
                        hintText: "Senha",
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(104, 52, 254, 1),
                          ),
                          child: Text("Entrar"),
                          onPressed: () => {
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
