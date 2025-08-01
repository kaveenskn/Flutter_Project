import 'package:flutter/material.dart';
import 'rowsCols.dart';

import 'Buttons.dart'; 

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
                width: 500,
                height:300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                 
                ),
                child: Center(child:CustomButtons () ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 30.0, bottom: 2.0),
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Center(child: RowsCols()),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
