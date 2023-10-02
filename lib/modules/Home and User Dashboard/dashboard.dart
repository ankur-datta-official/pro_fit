import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
                child: Icon(Icons.arrow_circle_left_outlined, color: Colors.white, size: 34,),
                flex: 1,
              ),
              Expanded(
                child: Center(
                  child: Text("DASHBOARD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                flex: 9,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.yellow),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img_5.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                    right: 0,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.yellow),
                        shape: BoxShape.circle,
                        color: Color(0xFF1c1c1e).withOpacity(0.6),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_a_photo_rounded),
                        color: Colors.white,
                        onPressed: () {  },
                      ),
                    ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 17),
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.yellow),
                hintText: "Full Name",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 17
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 17),
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.yellow),
                hintText: "example@domain",
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 17
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(
              onPressed: () {},
              child: Text("Save", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          OutlinedButton(
              onPressed: () {  },
              child: Text("Save", style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
          ),
          SizedBox(height: 50,),
          Row(
            children: [

            ],
          )
        ],
      ) ,


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

