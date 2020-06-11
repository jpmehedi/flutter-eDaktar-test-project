
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/nav_darwer.dart';
import '../components/doctor_card_builder.dart';
import '../components/small_button_builder.dart';


class Appoinment extends StatefulWidget {
  static String id = "Appoinment";
  @override
  _AppoinmentState createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: NavDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.alignLeft,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Appoinments',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                  row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallButtonBuilder(
                        text: 'Prescription',
                      ),
                      SmallButtonBuilder(
                        text: 'Serial No-24',
                      ),
                    ],
                  ),
                ),
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                  row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallButtonBuilder(
                        text: 'Prescription',
                      ),
                      SmallButtonBuilder(
                        text: 'Serial No-24',
                      ),
                    ],
                  ),
                ),
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                  row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallButtonBuilder(
                        text: 'Prescription',
                      ),
                      SmallButtonBuilder(
                        text: 'Serial No-24',
                      ),
                    ],
                  ),
                ),
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                  row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallButtonBuilder(
                        text: 'Prescription',
                      ),
                      SmallButtonBuilder(
                        text: 'Serial No-24',
                      ),
                    ],
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
