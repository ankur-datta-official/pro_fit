
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Legality/privacy_policy.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("DASHBOARD",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          //User Profile photo edit
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.yellow),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/img_5.png"),
              ),
            ),
          ),
          SizedBox(height: 30,),
          //User name edit section
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
          //User Email edit section
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
          SizedBox(height: 80,),
          //Update Save button
          OutlinedButton(
              onPressed: () {  },
              child: Text("Save", style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ),
          ),
          SizedBox(height: 50,),
          //Privacy Policy section
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PrivacyPolicy(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text("Privacy Policy", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                    flex: 4,
                  ),
                  Expanded(
                      child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}

