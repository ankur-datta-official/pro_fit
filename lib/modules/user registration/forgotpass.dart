import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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

}Future<void> PasswordReset() async {
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
        backgroundColor: Colors.black26,
        title: Text('Password Recovery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter your Email to Reset Password"),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: PasswordReset,
              child: Container(
                height: 45,
                width: 150,
                child: Center(child: Text("Reset Password",style: TextStyle(color: Colors.black,fontSize: 16),))),
            ),
          ],
        ),
      ),
    );
  }
}
