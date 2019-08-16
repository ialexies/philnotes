 import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
   bool _isLoggedIn = false;
   
   _login() async{

   }

   _logut() {
     setState(() {
      _isLoggedIn=false; 
     });
   }

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: Center(
           child: _isLoggedIn
           ? Column(),
         ),
       )
     );
   }
 }