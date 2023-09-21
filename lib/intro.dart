import 'package:flutter/material.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 115),
              child: Row(
                children: [
                  Text("Pro", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Colors.white),
                  ),
                  Text("Fit", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Colors.yellow,
                  ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
