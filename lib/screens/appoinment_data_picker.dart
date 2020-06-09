import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AppoinmentDatePicker extends StatefulWidget {
  static String id = "AppoinmentDatePicker";
  @override
  _AppoinmentDatePickerState createState() => _AppoinmentDatePickerState();
}

class _AppoinmentDatePickerState extends State<AppoinmentDatePicker> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Select Date",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                              constraints: BoxConstraints(
                                  minHeight: 60.0, minWidth: 60.0),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Working Days"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Visiting Hours"),
                                  Text("Fee"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("09.00 AM - 12.00 PM"),
                                  Text("500 BDT"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                ),
                Container(
                  child: TableCalendar(
                    calendarController: _calendarController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("05 May 2020"),
                        Text("Doctor Availabile"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Confirm"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
