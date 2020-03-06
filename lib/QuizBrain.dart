import 'package:quizzler/Question.dart';

class QuizBrain {
  int _currentQuestion = 0;
  List<Question> _questionList = [
    Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
    Question(
        q: "Approximately one quarter of human bones are in the feet.",
        a: true),
    Question(q: "A slug\'s blood is green.", a: true),
  ];

  void nextQuestion() {
    if (_currentQuestion < _questionList.length - 1) _currentQuestion++;
  }

  bool isLast() {
    return _currentQuestion == _questionList.length - 1;
  }

  void reset() {
    _currentQuestion = 0;
  }

  String getQuestionText() {
    return _questionList[_currentQuestion].question;
  }

  bool getAnswer() {
    return _questionList[_currentQuestion].answer;
  }
}
