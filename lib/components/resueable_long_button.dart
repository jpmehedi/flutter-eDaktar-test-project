import 'package:flutter/material.dart';

class ResueableLongButton extends StatelessWidget {
  ResueableLongButton({this.buttonText, @required this.onPressed});
  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: FlatButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}