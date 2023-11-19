import 'package:flutter/material.dart';
import './gradient_container.dart';

main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([
        Colors.blue,
        Colors.indigo,
      ]),
    ),
  ));
}
