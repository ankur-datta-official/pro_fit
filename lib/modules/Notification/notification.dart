import 'package:flutter/material.dart';

class notifi extends StatefulWidget {
  const notifi({super.key});

  @override
  State<notifi> createState() => _NotificationState();
}

class _NotificationState extends State<notifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("NOTIFICATIONS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      //Here writ ethe body part
      //body: ListTile(),
    );
  }
}

