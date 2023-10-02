import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/dashboard.dart';

import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Legality/privacy_policy.dart';
import 'package:pro_fit/modules/challanges/challanges.dart';
import 'package:pro_fit/modules/loginsignup/login.dart';
import 'package:pro_fit/modules/loginsignup/signup.dart';
import 'package:pro_fit/modules/nutrition/nutritionpage.dart';
import 'package:pro_fit/navigation.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/nutrition/nutritionpage.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/login.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/nutrition/foodpage.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff8f9311),
        scaffoldBackgroundColor: Color(0xff1b1819),
        useMaterial3: true,
      ),
      home: Home(),

      /*home: AnimatedSplashScreen(
          splash: Center(
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
        nextScreen: LoginPage(),
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Color(0xFF1c1c1e),
      ),*/
    );
  }
}
