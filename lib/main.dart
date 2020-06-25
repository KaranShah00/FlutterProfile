import 'package:flutter/material.dart';

import './screens/profile_screen.dart';

void main() {
  runApp(MyApp());    //Entry point for the application
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PaprClip Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}