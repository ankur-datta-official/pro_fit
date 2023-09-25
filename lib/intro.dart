
import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async
  {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home() ));
  }

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
