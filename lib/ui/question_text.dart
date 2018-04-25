import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override State<StatefulWidget> createState() {
    return new QuestionTextState();
  }
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override void initState() {
    _fontSizeAnimationController = new AnimationController(duration: new Duration(milliseconds: 250), vsync: this,);
    _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.easeInOut);
    _fontSizeAnimation.addListener(() => this.setState(() {}));
    _fontSizeAnimationController.forward();
    super.initState();
  }

  @override void dispose() {
    _fontSizeAnimationController.dispose();
    super.dispose();
  }

  @override void didUpdateWidget(QuestionText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget._question != widget._question) {
      _fontSizeAnimationController.reset();
      _fontSizeAnimationController.forward();
    }
  }

  @override Widget build(BuildContext context) => new Material(
        color: Colors.white,
        child: new Center(
          child: App.getWidget(new Text(
            '${widget._questionNumber.toString()} : ${widget._question}',
            style: new TextStyle(fontSize: _fontSizeAnimation.value * 15),
            textAlign: TextAlign.center,
          ),
            new EdgeInsets.all(20.0)),
        ),
      );
}