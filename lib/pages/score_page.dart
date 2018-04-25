import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/pages/landing_page.dart';

class ScorePage extends StatelessWidget {

  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  @override Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          App.getWidget(new Text(
            'Your Score is',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          )),
          new Container(
            padding: new EdgeInsets.all(60.0),
            decoration: new BoxDecoration(
              color: (score >= (totalQuestions / 2) ? Colors.green : Colors.redAccent),
              shape: BoxShape.circle,
              border: new Border.all(color: (score >= (totalQuestions / 2) ? Colors.greenAccent : Colors.orangeAccent), width: 4.0),
            ),
            child: new Text(
              '$score/$totalQuestions',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
          new IconButton(
            icon: new Icon(Icons.keyboard_arrow_right),
            color: Colors.white,
            iconSize: 100.0,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) {new LandingPage();}),
              (Route route) => route = null,
            ),
          ),
        ],
      ),
    );
  }
}