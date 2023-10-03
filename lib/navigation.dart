import 'package:flutter/material.dart';
import 'package:pro_fit/modules/challanges/challanges.dart';

import 'modules/Home and User Dashboard/dashboard.dart';
import 'modules/Home and User Dashboard/home.dart';
import 'modules/user registration/login.dart';
import 'modules/user registration/signup.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int _currentIndex = 2;
  final List<Widget> _pages = [
    LoginPage(),
    ChallangesPage(),
    home(),
    SignUpPage(),
    dashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.yellow, width: 2.0)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 0,
          fixedColor: Colors.white,
          backgroundColor: Color(0xFF1c1c1e),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_rounded),
              label: "Premium",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.celebration_rounded),
              label: "Rewards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "Profile",
            ),
          ],

        ),
      ),
    );
  }
}
