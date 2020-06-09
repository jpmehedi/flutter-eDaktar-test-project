import 'package:flutter/material.dart';

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
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          title: Text('hi'),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black,),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
        ),
        body: Center(
          child: Image.asset('images/index.jpeg'),
        ),
      ),
    );
  }
}
