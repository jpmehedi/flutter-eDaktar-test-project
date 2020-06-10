import 'package:e_daktar/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../constraint.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset('images/index.jpeg'),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: ClipOval(
                child: Image(
                  height: 80,
                  width: 80,
                  image: AssetImage('images/avatar.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 120),
              child: Text(
                'Mehedi Hasan',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Search Doctor'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Account'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text('Payment'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.add_call),
          title: Text('Appionment'),
          trailing: Icon(Icons.navigate_next),
        ),
        SizedBox(
          height: 150,
        ),
        Container(
          color: Colors.pink,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Log Out',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
