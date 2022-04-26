import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsbottomnav/home.dart';
import 'package:utsbottomnav/search.dart';
import 'package:utsbottomnav/favorite.dart';


class Dashboard extends StatefulWidget {
  static final title = 'Bhinne';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Favorite')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Dashboard.title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bhinne", style: TextStyle(fontFamily: 'Fancy')),
        ),

        body: tabs[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Color(0xffebb844),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Color(0xffebb844),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Favorite"),
              selectedColor: Color(0xffebb844),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }
        ),
      ),
    );

  }
}

