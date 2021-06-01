import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/input.dart';
import 'package:teste_izagro/src/components/title.dart';
import 'package:teste_izagro/src/models/user.dart';
import 'package:teste_izagro/src/repository/userRepository.dart';

class Register extends StatefulWidget {
  const Register({required Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  UserApp userApp = new UserApp();

  void register (BuildContext context) async {
    try{
      UserCredential userFirebase = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: userApp.email.toString(), password: userApp.senha.toString());
      if(userFirebase != null) {
        userApp.id = userFirebase.user!.uid;
        UserRepository.save(userApp);
        Navigator.pushNamed(context, 'login');
      }
    } catch(e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Falha ao criar o usuário, favor tentar novamente"),
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
                  Image.asset("images/undraw_Connected_re_lmq2.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        TextTitle('Registrar'),
                        Input(
                          key: Key("inputNome"),
                          hintText: "nome",
                          isPassword: false,
                          onSubmitted: (value) => userApp.nome = value.toString(),
                        ),
                        Input(
                          key: Key("inputLogin"),
                          hintText: "Email",
                          isPassword: false,
                          onSubmitted: (value) => userApp.email = value.toString(),
                        ),
                        Input(
                          key: Key("InputSenha"),
                          hintText: "Senha",
                          isPassword: true,
                          onSubmitted: (value) => userApp.senha = value.toString(),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(104, 52, 254, 1),
                              padding: EdgeInsets.only(top: 19, bottom: 19),
                            ),
                            child: Text('Registrar'),
                            onPressed: () => {
                              register(context),
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
