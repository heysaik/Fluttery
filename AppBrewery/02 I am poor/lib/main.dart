import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Poor"),
          backgroundColor: Colors.brown[700],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/Coal.png"),
          ),
        ),
        backgroundColor: Colors.brown,
      ),
    ),
  );
}
