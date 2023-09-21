import 'package:flutter/material.dart';
import 'package:pro_fit/intro.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1c1c1e),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const home(),
    );
  }
}
