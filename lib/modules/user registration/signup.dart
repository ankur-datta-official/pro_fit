
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_circle_left_outlined,
            color: Colors.white, size: 34,),
        ),
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("USER REGISTRATION",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Name"),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Password"),
                style: TextStyle(color: Colors.white),
                obscureText: true, // Hide password
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: "Confirm Password"),
                style: TextStyle(color: Colors.white),
                obscureText: true, // Hide password
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: _signUp,
                style: ElevatedButton.styleFrom(primary: Color(0xffFFFF00)),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
Future<void> _signUp() async {
  String name = _nameController.text;
  String email = _emailController.text;
  String password = _passwordController.text;
  String confirmPassword = _confirmPasswordController.text;

  if (password == confirmPassword) {
    try {
      // Create a user in Firebase Authentication
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // user id fetch kiya because to store same uid in firestore
      String uid = userCredential.user!.uid;

      // authenticate and firestore user id same store hoga
      await FirebaseFirestore.instance.collection("User").doc(uid).set({
        "Name": name,
        "Email": email,
        "Password": password,
        "Userid" : uid,
      });

      // You can navigate to another screen or perform other actions here.
      print("Sign Up successful");
    } catch (e) {
      // Handle sign-up errors here
      print("Sign-up error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign-up failed. Please try again."),
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Passwords do not match."),
      ),
    );
  }
}


Future<void> AddUserDetails(String name, String email, String password) async {
  await FirebaseFirestore.instance.collection("User").add({
    "Name": name,
    "Email": email,
    "Password": password,
  });
}

}
