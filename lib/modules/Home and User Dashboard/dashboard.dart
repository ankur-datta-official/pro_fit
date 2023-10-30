import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Legality/privacy_policy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class dashboard extends StatefulWidget {
  final String userUid;

  dashboard({required this.userUid});

  @override
  State<dashboard> createState() => _dashboardState();
}
class _dashboardState extends State<dashboard> {
  String name = "";
  String email = "";
  TextEditingController nameController = TextEditingController();
  bool isEditing = false; // Track if the user is in editing mode

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  // Fetch user data from Firestore using the provided User ID
  Future<void> fetchUserData() async {
    String userId = widget.userUid; //fetched uid use karega 
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance.collection("User").doc(userId).get();
      if (snapshot.exists) {
        setState(() {
          name = snapshot.data()?["Name"] ?? "";
          email = snapshot.data()?["Email"] ?? "";
          nameController.text = name;
        });
      }
    } catch (e) {
     
      print("Error fetching data: $e");
    }
  }

 // update name 
  Future<void> updateNameInFirestore() async {
    String newName = nameController.text;
    String userId = widget.userUid;

    try {
      await FirebaseFirestore.instance.collection("User").doc(userId).update({
        "Name": newName,
      });
      setState(() {
        name = newName; 
        isEditing = false; 
      });
      print("Name updated successfully.");
    } catch (e) {
      print("Error updating name: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text(
            "DASHBOARD",
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
          // User Profile photo edit
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
          SizedBox(
            height: 30,
          ),
          // Display name and email
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text("Name: ${isEditing ? '' : name}",
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text("Email: $email", style: TextStyle(color: Colors.white70, fontSize: 22, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 27),

          if (!isEditing) // Show edit button if not in editing mode
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isEditing = true; // Enter editing mode
                });
              },
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          if (isEditing)
            Column(
              children: [
                // Text field for editing the name
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.yellow),
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 17),
                    ),
                  ),
                ),

                // Save button
                OutlinedButton(
                  onPressed: updateNameInFirestore,
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(
            height: 50,
          ),
          // Privacy Policy section
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
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}