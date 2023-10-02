import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pro_fit/modules/loginsignup/login.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true, // Hide password
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: "Confirm Password"),
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
    );
  }

  
  Future<void> _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (password == confirmPassword) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,);
        
        // User registration successful, you can navigate to another screen or perform other actions.
        print("Sign Up successfull ");
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
}
