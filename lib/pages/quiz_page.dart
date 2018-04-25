import 'package:flutter/material.dart';
import 'package:quiz_app/ui/answer_button.dart';
import 'package:quiz_app/ui/question_text.dart';
import 'package:quiz_app/ui/result_overlay.dart';
import 'package:quiz_app/util/question.dart';
import 'package:quiz_app/util/quiz.dart';
import 'package:quiz_app/pages/score_page.dart';

class QuizPage extends StatefulWidget {
  @override State<StatefulWidget> createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Question _currentQuestion;
  Quiz _quiz = new Quiz();
  String _questionText;
  int _questionNumber;
  bool isCorrect;
  bool isOverlayVisible = false;

  @override void initState() {
    super.initState();
    _currentQuestion = _quiz.nextQuestion;
    _questionText = _currentQuestion.question;
    _questionNumber = _quiz.questionNumber;
  }

  void _handleAnswer(bool answer) {
    isCorrect = (_currentQuestion.answer == answer);
    _quiz.answer(isCorrect);
    setState(() => isOverlayVisible = true);
  }

  @override Widget build(BuildContext context) => new Stack(
    fit: StackFit.expand,
    children: <Widget>[
///      Main Page
      new Column(
        children: <Widget>[
          new AnswerButton(true, () => _handleAnswer(true)),
          new QuestionText(_questionText, _questionNumber),
          new AnswerButton(false, () => _handleAnswer(false)),
        ],
      ),
///      Overlay
      isOverlayVisible ?
        new ResultOverlay(
          isCorrect,
          _currentQuestion.explanation,
          () {
            if (_quiz.length == _questionNumber) {
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new ScorePage(_quiz.score, _quiz.length)),
                (Route route) => route = null
              );
              return;
            }
            _currentQuestion = _quiz.nextQuestion;
            this.setState(() {
              isOverlayVisible = false;
              _questionText = _currentQuestion.question;
              _questionNumber = _quiz.questionNumber;
            });
          }
        ) :
        new Container(),
    ],
  );
}