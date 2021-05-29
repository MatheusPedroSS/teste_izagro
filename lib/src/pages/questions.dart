import 'package:flutter/material.dart';
import 'package:teste_izagro/src/components/questionCard.dart';
import 'package:teste_izagro/src/components/title.dart';

class Questions extends StatefulWidget {
  const Questions({required Key key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextTitle(
                    'Qual o nível de qualidade você está procurando ?',
                    fontSize: 25
                ),
                QuestionCard(
                    key: Key('question1'),
                    text: 'Ótima qualidade',
                    pathImage: "images/undraw_Mobile_application_mr4r.png"
                ),
                QuestionCard(
                    key: Key('question2'),
                    text: 'Boa relação de qualidade e preço',
                    pathImage: "images/undraw_personal_finance_tqcd.png"
                ),
                QuestionCard(
                    key: Key('question3'),
                    text: 'Não estou interessado em muita qualidade',
                    pathImage: "images/undraw_my_app_re_gxtj.png"
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
