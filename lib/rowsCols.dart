// lib/hello_card.dart
import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: Center(child: Text("Box 1")),
        ),
        SizedBox(width: 10),
        Container(
          width: 80,
          height: 80,
          color: Colors.green,
          child: Center(child: Text("Box 2")),
        ),
        SizedBox(width: 10),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
          child: Center(child: Text("Box 3")),
        ),
      ],
    );
  }
}
