import 'package:flutter/material.dart';

import '../constraint.dart';

class DoctorCardBuilder extends StatelessWidget {
  DoctorCardBuilder(
      {@required this.doctorName,
      @required this.designation,
      @required this.title,
      @required this.postingHospital,
      @required this.workingDays,
      @required this.fee,
      @required this.visitingHours,
      this.row});
  final String doctorName;
  final String designation;
  final String title;
  final String postingHospital;
  List workingDays = [];
  final String fee;
  final String visitingHours;
  final Widget row;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      designation,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      postingHospital,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                RawMaterialButton(
                  child: Icon(
                    Icons.person_add,
                    size: 30,
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  fillColor: Colors.white,
                  constraints: BoxConstraints(minHeight: 60.0, minWidth: 60.0),
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Working Days", style: kCardTextStyle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Chip(
                        label: Text(workingDays[0], style: kChipTextStyle),
                      ),
                      Chip(
                        label: Text(workingDays[1], style: kChipTextStyle),
                      ),
                      Chip(
                        label: Text(workingDays[2], style: kChipTextStyle),
                      ),
                      Chip(
                        label: Text(workingDays[3], style: kChipTextStyle),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Chip(
                        label: Text(workingDays[4], style: kChipTextStyle),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Visiting Hours", style: kCardTextStyle),
                      Text("Fee", style: kCardTextStyle),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(visitingHours, style: kCardTextStyle),
                      Text(fee, style: kCardTextStyle),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Reviews", style: kCardTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: row, 
            )
          ],
        ),
      ),
    );
  }
}


