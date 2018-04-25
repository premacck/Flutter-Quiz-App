///
/// created by Prem Suman on 25/04/2018.
///
class Question {

  String _question;
  bool _answer;
  String _explanation;

  String get question => _question;

  bool get answer => _answer;

  String get explanation => _explanation;

  Question(this._question, this._answer, this._explanation);
}