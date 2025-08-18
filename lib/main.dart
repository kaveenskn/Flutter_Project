import 'package:firstproject/Login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation App'),
        ),
        // ✅ Add your custom drawer here
        body:Center(
          child: Column(
            children:[
             Expanded(child: LoginForm()
             )
            ]
          ),
        )
        ),
      );
 
  }
}
