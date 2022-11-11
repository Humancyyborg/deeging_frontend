
import 'package:deeging_frontend/views/bottom_navigation.dart';
import 'package:deeging_frontend/views/profile.dart';
import 'package:deeging_frontend/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black //here you can give the text color
          )
     ),
      home:  BottomNav() //Onboarding(),
    );
  }
}

