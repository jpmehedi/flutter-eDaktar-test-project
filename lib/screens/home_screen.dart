import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/nav_darwer.dart';
import '../constraint.dart';
import '../components/reuseable_card.dart';

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
                              Text(
                                'Mehedi Hasan',
                                style: kHomePagePrimaryTextStyle,
                              ),
                              Text(
                                'Mirpur, Dhaka',
                                style: kHomePageScondaryTextStyle,
                              ),
                              Text(
                                '26 Years',
                                style: kHomePageScondaryTextStyle,
                              ),
                              Text(
                                'Male',
                                style: kHomePageScondaryTextStyle,
                              ),
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
                            Text(
                              'Contact',
                              style: kHomePagePrimaryTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Phone',
                              style: kHomePageScondaryTextStyle,
                            ),
                            Text(
                              '+880-1790180825',
                              style: kHomePageScondaryTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Address',
                              style: kHomePagePrimaryTextStyle,
                            ),
                            Text(
                              'Block-D, Road 19/A, House# 221/2',
                              style: kHomePageScondaryTextStyle,
                            ),
                            Text(
                              'Mirpur-10, Dhaka-1276',
                              style: kHomePageScondaryTextStyle,
                            )
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
                              hintText: 'Search Doctor',
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
