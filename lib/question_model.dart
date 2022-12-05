class Question {
  String questionText;
  bool questionAnswer;

  Question({String q, bool a}) {
    questionText = q;
    questionAnswer = a;
  }
  //Place add question and answer
 static List<Question> questionBank = [
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
}
