import 'package:flutter/material.dart';
import 'navigationbar.dart'; // this is where your HomePage is defined
// import 'Buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(), // Let HomePage handle Scaffold, AppBar, and BottomNavigationBar
    );
  }
}
