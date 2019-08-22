  import 'package:flutter/material.dart';
  import './home.dart';


  const String homeRoute = '/';

  class Router {
    
    static Route<dynamic> generateRoute(RouteSettings settings) {
      
      switch (settings.name) {
        case homeRoute :
          return MaterialPageRoute(builder: (_) => Home());
        default:
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
      }
    }
  }