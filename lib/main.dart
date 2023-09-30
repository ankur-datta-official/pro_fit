// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/nutrition/nutritionpage.dart';
import 'firebase_options.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pro_fit/intro.dart';


//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter is initialized.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1c1c1e),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: dashboard(),

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
        nextScreen: home(),
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Color(0xFF1c1c1e),
      ),*/
    );
  }
}
