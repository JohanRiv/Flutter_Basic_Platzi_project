import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_bottom_nav_bar_cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeBottomNavBarCupertino());
  }
}
