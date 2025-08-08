import 'package:flutter/material.dart';
import 'Drawer.dart'; // Ensure this file has `MyDrawer` class properly defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation App'),
        ),
        drawer: MyDrawer(), // ✅ Add your custom drawer here
        body: Center(
          child: Text('Welcome to the home page!'),
        ),
      ),
    );
  }
}
