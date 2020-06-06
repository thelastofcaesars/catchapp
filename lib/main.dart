import 'package:flutter/material.dart';

import 'src/welcomePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CatchApp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: WelcomePage(title: 'CatchApp Your Protest'),
      debugShowCheckedModeBanner: false,
    );
  }
}