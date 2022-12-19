import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String text;

  Texts(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
      )
    );
  }
}