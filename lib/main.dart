import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_question_app/question_model.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Icon> scoreKeeper = [];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fa'), // Farsi
        const Locale('en'), // Farsi
      ],
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    Question.questionBank[questionNumber].questionText,
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontFamily: 'bold'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      'Yes',
                      style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                    ),
                    onPressed: () {
                      setState(() {
                        if (questionNumber < Question.questionBank.length - 1) {
                          bool correctAnswer = Question
                              .questionBank[questionNumber].questionAnswer;
                          if (correctAnswer == true) {
                            scoreKeeper.add(
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            );
                          } else {
                            scoreKeeper.add(
                              Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                            );
                          }

                          questionNumber++;
                        }
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text(
                      'No',
                      style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                    ),
                    onPressed: () {
                      setState(() {
                        if (questionNumber < Question.questionBank.length - 1) {
                          bool correctAnswer = Question
                              .questionBank[questionNumber].questionAnswer;
                          if (correctAnswer == true) {
                            scoreKeeper.add(
                              Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                            );
                          } else {
                            scoreKeeper.add(
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            );
                          }

                          questionNumber++;
                        }
                      });
                    },
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
