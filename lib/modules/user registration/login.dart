import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/user%20registration/forgotpass.dart';
import 'package:pro_fit/modules/user%20registration/signup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pro_fit/navigation.dart';
import 'package:pro_fit/navigation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text(
            "SIGN IN",
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
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(height: 20.0),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
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
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswordRecover()));
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(fontSize: 16, color: Colors.yellow),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(primary: Color(0xffFFFF00)),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(
                    "--or with--",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 24, color: Colors.yellow),
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

  Future<void> _login() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      User? user = userCredential.user;
      // Successfully logged in, you can navigate to the next screen here.
      Navigator.push(context, MaterialPageRoute(builder: (context) =>bottomNavigation(userUid: user!.uid)));
    } catch (e) {
      // Handle login errors here (e.g., display error message).
      print("Login error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login failed. Please check your credentials."),
        ),
      );
    }
  }

  Future<void> _google() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn(
        forceCodeForRefreshToken:
            true, // Set forceCodeForRefreshToken to true to disable Smart Lock(smart lock matlab it auto log in privious one)
      ).signIn();

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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => bottomNavigation(userUid: user!.uid)),
          );
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
