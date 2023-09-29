import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/challanges/challanges.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/nutrition/nutritionpage.dart';
import 'firebase_options.dart';
//import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/loginsignup/login.dart';

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
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff8f9311),
        scaffoldBackgroundColor: Color(0xff1b1819),
      ),
      
      home: NutritionPage(),
    );
  }
}
