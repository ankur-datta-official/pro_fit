// ignore: avoid_web_libraries_in_flutter
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'arms.dart';
// import 'back.dart';
// import 'chest.dart';
// import 'legs.dart';
// import 'warmup.dart';

class homeShankar extends StatelessWidget {
  const homeShankar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c1c1e),
      appBar: appBar(),
      body: body(),
    );
  }

  ListView body() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
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
                'Chest exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                'Chest exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                'Back exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                'Legs exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                'Arms exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'WORKOUT LIBRARY',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Color(0xFF1c1c1e),
      elevation: 0.0, //to remove the shadow of appbar
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xff000000),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/Group.svg',
            height: 35,
            width: 35,
          ),
        ),
      ),
    );
  }
}
