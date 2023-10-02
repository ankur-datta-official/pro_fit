import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/nutrition/foodpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: Text(
                    "HOME", // Change "Home" to "HOME" for consistency
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                flex: 9,
              ),
              Expanded(
                child: IconButton(
                  onPressed: _signOut,
                  icon: Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, User", style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
            Text("Let's Make Progress Together!", style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("Today's Workout Plan", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  )),
                  flex: 6,
                ),
                Expanded(
                  child: Text("Mon 18, Sep", style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  )),
                  flex: 2,
                ),
              ],
            ),
            SizedBox(height: 13),
            Card(
              color: Color(0xFF1c1c1e),
              child: Stack(
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/img_1.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 102, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Workout Library", style: TextStyle(
                          color:Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        )),
                        Text("|  20 Minutes", style: TextStyle(
                          color:Colors.yellow,
                          fontSize: 17
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Progress Tracker", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700
            )),
            SizedBox(height: 13),
            Card(
              color: Color(0xFF1c1c1e),
              child: Stack(
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/img_2.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 108, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fitness Stats", style: TextStyle(
                          color:Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        )),
                        Text("|  Track Your Fitness Journey, One Step at a Time.", style: TextStyle(
                          color:Colors.yellow,
                          fontSize: 14
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Nutrition Guide", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700
            )),
            SizedBox(height: 13),
            Card(
              color: Color(0xFF1c1c1e),
              child: Stack(
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/img_3.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 108, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Diet & Nutrition", style: TextStyle(
                          color:Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        )),
                        Text("|  Eat Well, Live Well: Your Path to Nutritional Success.", style: TextStyle(
                          color:Colors.yellow,
                          fontSize: 13
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Fitness Challenges", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700
            )),
            SizedBox(height: 13),
            Card(
              color: Color(0xFF1c1c1e),
              child: Stack(
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/img_4.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 108, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Achievement Zone", style: TextStyle(
                          color:Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        )),
                        Text("|  Earn Rewards, and Crush Your Fitness Challenges!", style: TextStyle(
                          color:Colors.yellow,
                          fontSize: 14
                        )),
                      ],
                    ),
                  ),
                ],
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
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodPage()));
                },
                child: Icon(Icons.workspace_premium_rounded)),
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

  // Signout function
  void _signOut() async {
    await FirebaseAuth.instance.signOut();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Logged out successfully"),
        );
      },
    );
  }
}
