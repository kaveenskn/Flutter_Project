// lib/hello_card.dart
import 'package:flutter/material.dart';

class HelloCard extends StatelessWidget {
  const HelloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(right: 20.0, bottom: 2.0),
        width: 150,
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lime,
        ),
        child: Text(
          'Hello World new!',
          style: TextStyle(
            color: Color.fromARGB(255, 45, 150, 236),
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
