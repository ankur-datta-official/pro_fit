import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 
  bool _obscureText = true;
  bool _isChecked = false;

  Future<void> _signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
       print("done");
      // Successfully signed up, you can navigate to the next screen here.
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ChallangesPage()),
      // );
    } catch (e) {
      // Handle sign-up errors here (e.g., display error message).
    
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text("$e"),
      //   ),
      // );
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign-up failed. Please check your information.$e"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       appBar: AppBar(
//         title:Text("Sign up")
// ,        backgroundColor: Color(0xff1d1a1b),
//       ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 95),
                  child: Container(
                    width: 150,
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 67, 73),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",labelStyle: TextStyle(fontSize: 19)
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email", labelStyle: TextStyle(fontSize: 19),
                    // prefixIcon: Icon(Icons.email),
                    
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',labelStyle: TextStyle(fontSize: 19),
                    // prefixIcon: Icon(Icons.key),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
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
                
                SizedBox(
                  height: 15,
                ),
                Row(
                  
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    Text("I agree to the terms and conditions"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: _isChecked
                        ? _signUp
                        : null,
                    style: ElevatedButton.styleFrom(primary: Color(0xffddb331)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(child: Text("--or with--",style: TextStyle(fontSize: 16),)),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: GestureDetector(
                          onTap: _googleSignUp,
                          child: Image.asset("assets/images/google.png")),
                      height: 35,
                      width: 45,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have an Account"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
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


   Future<void> _googleSignUp() async {
  try {
    final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(credential);

      final User? user = authResult.user;

      if (user != null) {
        // Successfully signed up with Google, you can now use 'user' for further actions.
        print('Signed up with Google: ${user.displayName}');
        //        Navigator.pushReplacementNamed(context, '/home');
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

      } else {
        // Handle sign-up failure.
        print('Google Sign-Up failed.');
      }
    } else {
      // Handle canceled sign-up.
      print('Google Sign-Up canceled.');
    }
  } catch (error) {
    // Handle other errors.
    print('Error during Google Sign-Up: $error');
  }
    }

}