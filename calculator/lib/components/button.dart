import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // variaveis de button
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool big;
  final color;

  // construtor
  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
  });
  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
  });
  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
  });

  // widget
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
