import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/nav_darwer.dart';
import '../components/resueable_searchbar.dart';
import '../components/set_appoinment_card.dart';
import '../screens/new_patint_screen.dart';

class DoctorList extends StatefulWidget {
  static String id = 'DoctorList';
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<String> _speciality = ['A', 'B', 'C'];
  List<String> _area = ['Dhaka', 'Cumilla', 'Chandpur', 'Feni'];
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
                Icons.notifications_active,
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
                  child: ResueableSearchBar(
                    hintText: 'Search Doctor',
                    icon: Icon(Icons.search),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
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
                                  'Speciality',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                DropdownButton<String>(
                                  items: _speciality.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    print(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
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
                                  'Area',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                DropdownButton<String>(
                                  items: _speciality.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    print(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SetAppoinmentCard(
                  onPressed: () {
                    Navigator.pushNamed(context, NewPatintScreen.id);
                  },
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                ),
                SetAppoinmentCard(
                  onPressed: () {},
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                ),
                SetAppoinmentCard(
                  onPressed: () {},
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
