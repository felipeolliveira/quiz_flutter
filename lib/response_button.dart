import 'package:flutter/material.dart';

class ResponseButton extends StatelessWidget {
  final String _text;
  final void Function() _handlePressed;

  ResponseButton(this._text, this._handlePressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(_text),
        onPressed: _handlePressed,
      ),
    );
  }
}
