import 'package:flutter/material.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Chatty',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: Home(),
    );
  }
}