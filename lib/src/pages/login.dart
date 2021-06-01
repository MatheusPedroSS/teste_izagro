import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/input.dart';
import 'package:teste_izagro/src/components/title.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({required Key key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  var _email = '';
  var _senha = '';

  void doLogin(BuildContext context) async {
    try{
      UserCredential userFirebase = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _senha);
      if(userFirebase != null) {
        Navigator.pushNamed(context, 'home');
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Falha ao realizar o Login"),
        backgroundColor: Colors.redAccent,
      ));
    }
  }

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
                          onSubmitted: (value) => _email = value.toString(),
                        ),
                        Input(
                          key: Key("InputSenha"),
                          hintText: "Senha",
                          isPassword: true,
                          onSubmitted: (value) => _senha = value.toString(),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(104, 52, 254, 1),
                              padding: EdgeInsets.only(top: 19, bottom: 19),
                            ),
                            child: Text('Login'),
                            onPressed: () => {
                              doLogin(context),
                            },
                          ),
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
