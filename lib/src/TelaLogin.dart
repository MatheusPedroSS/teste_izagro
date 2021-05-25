import 'package:flutter/material.dart';

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
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(104, 52, 254, 1),
                          ),
                          child: Text("Entrar"),
                          onPressed: () => {},
                        ),
                      )
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
