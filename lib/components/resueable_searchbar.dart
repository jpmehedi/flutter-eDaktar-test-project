import 'package:flutter/material.dart';

class ResueableSearchBar extends StatelessWidget {
  const ResueableSearchBar({this.hintText, this.icon});
  final String hintText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(
              icon: icon,
              hintText:hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
