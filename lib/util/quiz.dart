import 'package:quiz_app/util/question.dart';
import 'package:quiz_app/util/question_repo.dart';

///
/// created by Prem Suman on 25/04/2018.
///
class Quiz {

  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz() {
    QuestionRepo.questions.shuffle();
  }

  int get score => _score;

  int get length => 10;

  int get questionNumber => _currentQuestionIndex + 1;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length) return null;
    return QuestionRepo.questions[_currentQuestionIndex];
  }

  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  }
}