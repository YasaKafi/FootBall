import 'package:flutter/material.dart';
import 'package:football/Model/constant.dart';
import 'package:football/Navigation%20Bar/percobaan.dart';
import 'package:iconsax/iconsax.dart';
import 'package:football/Navigation Bar/competitions.dart';
import 'package:football/Navigation Bar/home.dart';
import 'package:football/Navigation Bar/profile.dart';
import 'package:football/Navigation Bar/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = [
    Homeku(),
    SearchPage(),
    Competition(),
    ProfilePage(),
  ];

  int currentIndex = 0;
  //  onTap(index){
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          // selectedFontSize: 0.0,
          selectedItemColor: kgreenbutton,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          // showSelectedLabels:true,
          // showUnselectedLabels: true,
          // elevation: 0,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',

            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.cup),
              label: 'Competitions',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',

            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

// BottomNavigationBar(
// onTap: onTap,
// currentIndex: currentIndex,
// unselectedFontSize: 0.0,

// items:  [
