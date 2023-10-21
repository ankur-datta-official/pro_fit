// ignore: avoid_web_libraries_in_flutter
//import 'dart:js';

import 'package:flutter/material.dart';
// import 'arms.dart';
// import 'back.dart';
// import 'chest.dart';
// import 'legs.dart';
// import 'warmup.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c1c1e),
      appBar: AppBar(
        leading: new IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_circle_left_outlined,
            color: Colors.white, size: 34,),
        ),
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("WORKOUT LIBRARY",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: body(),
    );
  }

  ListView body() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/Warm-up.png'),
                fit: BoxFit.cover,
                opacity: 150,
              ),
              borderRadius: BorderRadius.circular(128),
            ),
            // ignore: prefer_const_constructors
            child: Center(
              child: const Text(
                'Warm-Up Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/chest.png'),
                fit: BoxFit.cover,
                opacity: 150,
              ),
              borderRadius: BorderRadius.circular(128),
            ),
            child: const Center(
              child: Text(
                'Chest Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover,
                opacity: 150,
              ),
              borderRadius: BorderRadius.circular(128),
            ),
            child: const Center(
              child: Text(
                'Back Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/legs.png'),
                fit: BoxFit.cover,
                opacity: 150,
              ),
              borderRadius: BorderRadius.circular(128),
            ),
            child: const Center(
              child: Text(
                'Legs Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/arms.png'),
                fit: BoxFit.cover,
                opacity: 150,
              ),
              borderRadius: BorderRadius.circular(128),
            ),
            child: const Center(
              child: Text(
                'Arms Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
