import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_page.dart';
import 'package:platzi_trips_app/profile_page.dart';
import 'package:platzi_trips_app/search_page.dart';

class HomeBottomNavBar extends StatefulWidget {
  @override
  _HomeBottomNavBarState createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int indexTaps = 0;
  final List<Widget> tapsView = [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    Scaffold home = Scaffold(
      body: tapsView[indexTaps],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTaps,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
          ],
        ),
      ),
      //body: HomePage()
    );
    return home;
  }

  void onTapTapped(int index) {
    setState(() {
      indexTaps = index;
    });
  }
}
