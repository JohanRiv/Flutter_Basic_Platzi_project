import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/home_page.dart';
import 'package:platzi_trips_app/profile_page.dart';
import 'package:platzi_trips_app/search_page.dart';

class HomeBottomNavBarCupertino extends StatefulWidget {
  @override
  _HomeBottomNavBarCupertinoState createState() =>
      _HomeBottomNavBarCupertinoState();
}

class _HomeBottomNavBarCupertinoState extends State<HomeBottomNavBarCupertino> {
  int indexTaps = 0;
  final List<Widget> tapsView = [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    Scaffold home = Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purple,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.purple,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.purple,
            ),
            label: "",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => HomePage(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (context) => SearchPage(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (context) => ProfilePage(),
            );
            break;
        }
      },
    ));
    return home;
  }

  void onTapTapped(int index) {
    setState(() {
      indexTaps = index;
    });
  }
}
