import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'quiz_page.dart';

class LandingPage extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue,
      child: new InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new QuizPage())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            App.getWidget(new Text(
              'Lets Quiz!',
              style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold,),
            )),
            App.getWidget(new Text(
              'Tap to Start',
              style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold,),
            )),
          ],
        ),
      ),
    );
  }
}