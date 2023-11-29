import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late String buttonText;
  late Color buttonColor;
  late VoidCallback callback;

  RoundedButton(
      {required this.buttonText,
      required this.buttonColor,
      required this.callback});

  // RoundedButton({text, onPressed, color}) {
  //   buttonText = text;
  //   callback = onPressed;
  //   buttonColor = color;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            // 'Log In',
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
