import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_question_app/Question.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Icon> scoreKeeper = [];

  //Place add question and answer
  List<Question> questionBank = [
    Question(q: 'آدم عصبی هستیم؟', a: true),
    Question(q: 'آشپزی بلدم؟', a: true),
    Question(q: 'خسته ام؟', a: true),
    Question(q: 'آهنگهای سنتی رو دوست دارم؟', a: false),
    Question(q: 'اسمی رو که برات انتخاب کردن دوست دارم؟', a: true),
    Question(q: 'اگه تو خیابون سکه طلا پیدا کنی بَر میدارم؟', a: true),
    Question(q: 'ایمیل دارم؟', a: true),
    Question(q: 'بسکتبال دوس دارم؟', a: false),
    Question(q: 'بیکارم؟', a: false),
    Question(q: 'پیتزا دوست دارم؟', a: true),
    Question(q: 'حوصله باشگاه دارم؟', a: true),
    Question(q: 'تقویم سال جدیدو دارم؟', a: false),
    Question(q: 'تنهایی دوست دارم؟', a: false),
    Question(q: 'پول دارم؟', a: false),
    Question(q: 'شام kfc دارم؟', a: false),
    Question(q: 'حوصله دارم؟', a: false),
    Question(q: 'رژیم دارم؟', a: false),
    Question(q: ' ', a: true),
  ];

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
                    questionBank[questionNumber].questionText,
                    style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'bold'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: FlatButton(
                    child: Text(
                      'بله',
                      style: TextStyle(fontSize: 18,fontFamily: 'bold'),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        if (questionNumber < questionBank.length - 1) {
                          bool correctAnswer =
                              questionBank[questionNumber].questionAnswer;
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
                  child: FlatButton(
                    child: Text(
                      'نه',
                      style: TextStyle(fontSize: 18,fontFamily: 'bold'),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        if (questionNumber < questionBank.length - 1) {
                          bool correctAnswer =
                              questionBank[questionNumber].questionAnswer;
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
