import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'dart:math';

class ResultOverlay extends StatefulWidget {

  final bool _isCorrect;
  final String _explanation;
  final VoidCallback _onTap;

  ResultOverlay(this._isCorrect, this._explanation, this._onTap);

  @override State<StatefulWidget> createState() => new ResultOverlayState();
}

class ResultOverlayState extends State<ResultOverlay> with SingleTickerProviderStateMixin{

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override void initState() {
    _iconAnimationController = new AnimationController(duration: new Duration(seconds: 2), vsync: this);
    _iconAnimation = new CurvedAnimation(parent: _iconAnimationController, curve: Curves.elasticOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
    super.initState();
  }

  @override Widget build(BuildContext context) => new Material(
      color: Colors.black87,
      child: new InkWell(
        onTap: widget._onTap,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Expanded(
              child: new SingleChildScrollView(
                padding: new EdgeInsets.only(top: 112.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      padding: new EdgeInsets.all(16.0),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: new Border.all(color: widget._isCorrect ? Colors.green : Colors.redAccent, width: 2.0),
                      ),
                      child: new Transform.rotate(
                        angle: _iconAnimation.value * 2 * PI,
                        child: new Icon(
                          widget._isCorrect ? Icons.done : Icons.close,
                          size: _iconAnimation.value * 50.0,
                          color: widget._isCorrect ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ),
                    App.getWidget(new Text(
                      widget._isCorrect ? 'Correct!' : 'Wrong!',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    )),
                    App.getWidget(new Text(
                      widget._explanation,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ), new EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0)),
                  ],
                ),
              ),
            ),
            App.getWidget(
              new Text('Tap anywhere to view next Question', textAlign: TextAlign.center, style: new TextStyle(color: Colors.white,)),
              new EdgeInsets.only(top: 40.0, bottom: 40.0)
            ),
          ],
        )
      ),
    );
}