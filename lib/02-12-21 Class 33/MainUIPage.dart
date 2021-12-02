import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:registrationpage_evening/02-12-21%20Class%2033/CarouselAndBottomNavbar.dart';
import 'package:registrationpage_evening/02-12-21%20Class%2033/HomePage.dart';
import 'package:registrationpage_evening/02-12-21%20Class%2033/dashboard.dart';
import 'package:registrationpage_evening/02-12-21%20Class%2033/profile.dart';
import 'package:registrationpage_evening/14-11-21%20Class-27/GridWithItemLists.dart';
import 'package:registrationpage_evening/18-11-21%20Class-29/LocalJsonWithSearchBar.dart';
import 'package:registrationpage_evening/23-11-21%20Class%2030/StackAndMediaQuery.dart';
import 'package:registrationpage_evening/25-11-21%20Class%2031/WeatherWithAPI.dart';

class MainUIPage extends StatefulWidget {
  const MainUIPage({Key? key}) : super(key: key);

  @override
  _MainUIPageState createState() => _MainUIPageState();
}

class _MainUIPageState extends State<MainUIPage> {

  var currentIndex = 0;

  final ListofPages = [

    CarouselAndBottomNavBar(),
    WeatherWithAPI(),
    GridWithListItems(),
    LocalJsonWithSearchbar()


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListofPages[currentIndex],

      
      
      bottomNavigationBar: BottomNavyBar(items: <BottomNavyBarItem>[

        BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"),activeColor: Colors.orange,inactiveColor: Colors.grey),
        BottomNavyBarItem(icon: Icon(Icons.dashboard), title: Text("Dashboard"),activeColor: Colors.orange,inactiveColor: Colors.grey),
        BottomNavyBarItem(icon: Icon(Icons.notifications), title: Text("Notification"),activeColor: Colors.orange,inactiveColor: Colors.grey),
        BottomNavyBarItem(icon: Icon(Icons.person), title: Text("Profile"),activeColor: Colors.orange,inactiveColor: Colors.grey),




      ],
          selectedIndex: currentIndex,
          onItemSelected: (index){

        setState(() {
          currentIndex =index;
        });
      }

      ),
      
    );
  }
}
