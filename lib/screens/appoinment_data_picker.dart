import 'package:flutter/material.dart';
import '../components/rounded_button.dart';

class AppoinmentDatePicker extends StatefulWidget {
  static String id = "AppoinmentDatePicker";
  @override
  _AppoinmentDatePickerState createState() => _AppoinmentDatePickerState();
}

class _AppoinmentDatePickerState extends State<AppoinmentDatePicker> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Selected  Date"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("Dr. Mahinur Islam"),
                              Text("Dr. Mahinur Islam"),
                              Text("Dr. Mahinur Islam"),
                              Text("Dr. Mahinur Islam"),
                            ],
                          ),
                          RawMaterialButton(
                            child: Icon(Icons.person_add),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            fillColor: Colors.white,
                            constraints:
                                BoxConstraints(minHeight: 60.0, minWidth: 60.0),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Working Days"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Chip(
                                  label: Text("Sun"),
                                ),
                                Chip(
                                  label: Text("Sun"),
                                ),
                                Chip(
                                  label: Text("Sun"),
                                ),
                                Chip(
                                  label: Text("Sun"),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Chip(
                                  label: Text("Sun"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Visiting Hours"),
                                Text("Fee"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("09.00 AM - 12.00 PM"),
                                Text("500 BDT"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Reviews"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
