import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/forgotpass.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  Future<void> _login() async {
    // showDialog(context: context, builder: (context){
    //   return const Center(child: CircularProgressIndicator(),);
    // });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // success fir navigate to home
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } catch (e) {
      // Handle login errors here (e.g., display error message).
      print("Login error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login failed. Please check your credentials."),
        ),
      );
    }

    //  Navigator.pop(context);
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('')),
      //   backgroundColor: Color(0xff1d1a1b),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(
                    width: 150,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 87, 91, 96),
                      shape: BoxShape.circle,
                      
                    ),
                    child: Center(
                      child: Icon(
                        Icons.lock,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelText: 'Email', labelStyle: TextStyle(fontSize: 20)),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>PasswordRecover()));
                        
                      },
                      child: Text("Forgot password"),
                    )
                  ],
                ),
                SizedBox(height: 15.0),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(primary: Color(0xffddb331,)),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text("--or with--",style: TextStyle(fontSize: 16),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: GestureDetector(
                        onTap: _google,
                        child: Image.asset("assets/images/google.png")),
                    height: 35,
                    width: 45,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _google() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);

        final User? user = authResult.user;

        if (user != null) {
          // Successfully signed in with Google, you can now use 'user' for further actions.
          print('Logged in with Google: ${user.displayName}');
//direct home pe navigate
          Navigator.pushNamed(context, '/intro');
        } else {
          // Handle sign-in failure.
          print('Google Sign-In failed.');
        }
      } else {
        // Handle canceled sign-in.
        print('Google Sign-In canceled.');
      }
    } catch (error) {
      // Handle other errors.
      print('Error during Google Sign-In: $error');
    }
  }
}
