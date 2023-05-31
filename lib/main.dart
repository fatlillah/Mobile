import 'package:flutter/material.dart';
import 'package:praktikum/Screens/Welcome/welcome_screen.dart';
import 'constansts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evoting',
      theme: ThemeData(
         primaryColor: kPrimaryColor,
         scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}


