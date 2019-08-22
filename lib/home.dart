 import 'package:flutter/material.dart';

  import './router.dart';
  import './main.dart';


 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
        onGenerateRoute: Router.generateRoute,  //generate the router
			 initialRoute: homeRoute,
       home: Scaffold(
         appBar: AppBar(
           title: Text('fdf'),
         ),
         body: Scaffold(
          body: Column(
            children: <Widget>[
               OutlineButton(
                   child: Text("Logout"),
                   onPressed: (){

                
                      // _logout();
                   },
                 ),
            ],
          ),
         ),
       ),
     );
   }
 }