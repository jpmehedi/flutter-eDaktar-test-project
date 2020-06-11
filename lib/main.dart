import 'package:e_daktar/screens/home_screen.dart';
import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/home_screen.dart';
import './screens/appoinment_data_picker.dart';
import './screens/appoinment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginScreen(),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        AppoinmentDatePicker.id: (context) => AppoinmentDatePicker(),
        Appoinment.id: (context) => Appoinment(),
      },
    );
  }
}
