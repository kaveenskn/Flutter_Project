// lib/main.dart
import 'package:flutter/material.dart';
// import 'hellocard.dart'; // Import the new widget
import 'rowsCols.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App new bar")),
        body: Column(
          children: [
            Container(
                alignment: Alignment.center,
                child: Container(
                       margin: EdgeInsets.only(right: 20.0, bottom: 2.0),
                       width: 150,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lime,)
                        )
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Container(
                               child: Center(child: RowsCols()),
                              margin: EdgeInsets.only(right: 30.0, bottom: 2.0),
                              width: 400,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,)
                        )
                    )
            
          ],
        )
      ),
    ),
  );
}
