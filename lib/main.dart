// import 'package:appointment_system/Modules/HomeScreen/HomeSceen.dart';
// import 'package:appointment_system/Modules/Test/test.dart';
// import 'package:appointment_system/Modules/Test/testScreen.dart';
import 'package:appointment_system/Modules/HomeScreen/HomeSceen.dart';
// import 'package:appointment_system/Modules/Test/finaltest.dart';
// import 'package:appointment_system/Modules/Test/testScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      );
  }
}