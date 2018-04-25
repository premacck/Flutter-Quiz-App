import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _isTrue;
  final VoidCallback _onTap;

  AnswerButton(this._isTrue, this._onTap);

  @override Widget build(BuildContext context) => new Expanded(
    child: new Material(
      color: _isTrue ? Colors.greenAccent : Colors.redAccent,
      child: new InkWell(
        onTap: _onTap,
        child: new Center(
          child: new Container(
            decoration: new BoxDecoration(border: new Border.all(color: Colors.white, width: 2.0)),
            padding: new EdgeInsets.all(20.0),
            child: new Text(
              _isTrue ? 'True' : 'False',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}