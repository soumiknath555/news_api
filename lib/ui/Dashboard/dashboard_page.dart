import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api/ui/Dashboard/explore_page.dart';
import 'package:news_api/ui/Dashboard/home/home_page.dart';
import 'package:news_api/ui/Dashboard/settings_page.dart';

class DashboardPage extends StatefulWidget{
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int selectedPageIndex = 0;

  List<Widget> navePages = [
    HomePage(),
    ExplorePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: navePages[selectedPageIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black38,
          onTap: ((index){
            selectedPageIndex = index;
            setState(() {

            });
          }),

          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),



          ])
    );
  }
}