import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/nav_darwer.dart';
import '../constraint.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  Icons.notifications_active,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Mehedi Hasan'),
                              Text('Mirpur, Dhaka'),
                              Text('26 Years'),
                              Text('Male'),
                            ],
                          ),
                          Icon(
                            Icons.person,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text('Contact'),
                            Text('Phone'),
                            Text('+880-1790180825'),
                            Text('Address'),
                            Text('Block-D, Road 19/A, House# 221/2'),
                            Text('Mirpur-10, Dhaka-1276')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ReuseableCard(
                                hedding: 'Appoinment ',
                                title: 'Schedule',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ReuseableCard(
                                hedding: 'Recent',
                                title: 'Prescription',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              ReuseableCard(
                                hedding: 'COVID-19 ',
                                title: 'Information',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ReuseableCard(
                                hedding: 'Others',
                                title: 'Information',
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.title, this.hedding});
  final String hedding;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.teal),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                hedding,
                style: kReuseableCardStyle,
              ),
              Text(
                title,
                style: kReuseableCardStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
