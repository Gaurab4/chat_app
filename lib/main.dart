import 'package:chat_app/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128c7E),
      ),
      home:Homescreen(),
    );
  }
}

