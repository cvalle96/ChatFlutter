import 'package:flutter/material.dart';
import 'package:schange/screens/home_screen.dart';
import 'package:schange/screens/tips_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: TipsScreen(), //HomeScreen()
    );
  }
}

