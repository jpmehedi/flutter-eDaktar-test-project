import 'package:flutter/material.dart';

class InputFeildBuilder extends StatelessWidget {
  InputFeildBuilder({this.hintText, this.icon});

  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          fillColor: Colors.blueAccent,
          focusColor: Colors.brown,
        ),
      ),
    );
  }
}