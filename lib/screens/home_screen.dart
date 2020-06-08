import 'package:flutter/material.dart';
 

 class HomeScreen extends StatefulWidget {
   static String id = "HomeScreen";
   @override
   _HomeScreenState createState() => _HomeScreenState();
 }
 
 class _HomeScreenState extends State<HomeScreen> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         drawer: Drawer(),
         appBar: AppBar(
           title: Text("data"),
         ),
         body: Center(
           child: Image.asset('images/index.jpeg'),
         ),
       ),
     );
    
   }
 }


