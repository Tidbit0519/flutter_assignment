// 1) Create a new Flutter App (in this project) and output an AppBar and some _text
// below it
// 2) Add a button which changes the _text (to any other _text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './text.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _text = [
      'I\'m happy!',
      'I\'m sad.',
      'I\'m angry!!'
    ];

  var _textIndex = 0;

  void changeText() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
    print(_textIndex);
    if(_textIndex < _text.length) {
      print('Click for more!');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Center(
          child: _textIndex < _text.length
          ? Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextControl(changeText),
              Texts(_text[_textIndex]),
            ],
          )
          : Text('Done!'),
        ),
      ),
    );
  }
}