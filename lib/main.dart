import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromRGBO(138, 35, 135, 100),
            Color.fromRGBO(233, 64, 87, 100),
            Color.fromRGBO(242, 113, 33, 100),
        ])
      ),
    );
  }
}