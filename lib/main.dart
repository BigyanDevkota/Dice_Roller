import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
        GradientContainer(
            Color.fromARGB(255, 5, 104, 170),
              Color.fromARGB(31, 1, 32, 79)),
      ),
    ),
  );
}
