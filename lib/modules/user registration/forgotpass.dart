import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//temp cmnt

class PasswordRecover extends StatefulWidget {
  const PasswordRecover({Key? key});

  @override
  State<PasswordRecover> createState() => _PasswordRecoverState();
}

class _PasswordRecoverState extends State<PasswordRecover> {
final TextEditingController _emailController = TextEditingController();

@override
void dispose(){
  _emailController.dispose;
  super.dispose();  // to avoid memory leak
}

Future<void> PasswordReset() async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: _emailController.text.trim(),
    );
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          content: Text("Password reset link has been sent. Check your email."),
        );
      }),
    );
  } on FirebaseAuthException catch (e) {

    print("Firebase Authentication Error: ${e.code} - ${e.message}");
    if (e.code == 'user-not-found')
     {
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Text("User not found. Please check your email address."),
          );
        }),
      );
    } else {
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }),
      );
    }
  }
}
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
          child: Text("PASSWORD RECOVERY",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Enter your Email to Reset Password", style: TextStyle(
                color: Colors.white,
              fontSize: 20,
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: PasswordReset,
              child: Container(
                height: 45,
                width: 150,
                child: Center(child: Text("Reset Password",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  fontWeight: FontWeight.w600
                ),))),
            ),
          ],
        ),
      ),
    );
  }
}
