import 'package:flutter/material.dart';
import 'package:quiz_app/pages/landing_page.dart';

void main() => runApp(new MaterialApp(
  title: 'QuizApp',
  theme: new ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: new LandingPage(),
));

class App {
  static Widget getWidget(Widget child, [EdgeInsets pad = const EdgeInsets.all(16.0)]) => new Container(padding: pad, child: child,);
}