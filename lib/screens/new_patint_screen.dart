import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/nav_darwer.dart';
import '../components/inputfield_builder.dart';
import '../components/dropdown_button_builder.dart';
import '../components/resueable_long_button.dart';

class NewPatintScreen extends StatefulWidget {
  static String id = 'NewPatintScreen';
  @override
  _NewPatintScreenState createState() => _NewPatintScreenState();
}

class _NewPatintScreenState extends State<NewPatintScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> _gender = ['Male', 'Female', 'Other'];
  List<String> _age = ['1', '2', '3', '4', '5'];
  List<String> _weight = ['1', '2', '3', '4', '5'];
  List<String> _occopetions = ['Doctor', 'Enginieer', 'Business'];

  _showDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            width: 300,
            height: 400,
            child: Hero(
              tag: 'zoom',
              child: Image.asset('images/prescription.jpg'),
            ),
          ),
        );
      },
    );
  }

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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Patient\'s Details',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        InputFeildBuilder(
                          hintText: 'Patient Name',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            DropdownButtonBuilders(
                              dropDownButtonTag: 'Age',
                              dropdownButton: DropdownButton<String>(
                                items: _age.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            DropdownButtonBuilders(
                              dropDownButtonTag: 'Age',
                              dropdownButton: DropdownButton<String>(
                                items: _gender.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            DropdownButtonBuilders(
                              dropDownButtonTag: 'Age',
                              dropdownButton: DropdownButton<String>(
                                items: _age.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            DropdownButtonBuilders(
                              dropDownButtonTag: 'Age',
                              dropdownButton: DropdownButton<String>(
                                items: _gender.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Write Patients Symptoom',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                child: Icon(Icons.add,
                                    size: 50, color: Colors.white),
                              ),
                              FlatButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  return _showDialog(context);
                                },
                                child: Container(
                                  width: 120,
                                  height: 140,
                                  child: Hero(
                                    tag: 'zoom',
                                    child:
                                        Image.asset('images/prescription.jpg'),
                                  ),
                                ),
                              ),
                              FlatButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  return _showDialog(context);
                                },
                                child: Container(
                                  width: 120,
                                  height: 140,
                                  child: Hero(
                                    tag: 'zoom',
                                    child:
                                        Image.asset('images/prescription.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResueableLongButton(
                  onPressed: () {},
                  buttonText: 'Save',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
