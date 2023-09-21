import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600,),
      ),
        ),
      ),
      body: Container(
        height: 82,
        width: 390,
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
                fontWeight:
                FontWeight.w600),
            ),
          ],
        ),
      ),

    );
  }
}
