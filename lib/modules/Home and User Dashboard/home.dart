import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                flex: 9,
              ),
              Expanded(
                  child: Icon(Icons.logout_rounded, color: Colors.white, size: 32,),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, User", style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
            ),
            Text("Let's Make Progress Together!", style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Container(
              width: 380,
              height: 198,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(
                 color: Colors.black,
                 blurRadius: 10,
                )],
              ),
            ),
          ],
        ),
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
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

