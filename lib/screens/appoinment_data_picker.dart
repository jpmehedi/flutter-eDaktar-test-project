import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/doctor_card_builder.dart';

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
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat','Wed','Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
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
                        Text(
                          "05 May 2020",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          "Doctor Availabile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
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
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
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


