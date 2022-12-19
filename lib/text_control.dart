import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback selectHandler;

  TextControl(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('Click here to change the display text!')
      )
    );
  }

}