import 'package:flutter/material.dart';


class DropdownButtonBuilders extends StatelessWidget {
  DropdownButtonBuilders(
      {this.dropDownButtonTag, @required this.dropdownButton});
  final String dropDownButtonTag;
  final DropdownButton dropdownButton;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                dropDownButtonTag,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              dropdownButton,
            ],
          ),
        ),
      ),
    );
  }
}
