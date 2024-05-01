import 'package:flutter/material.dart';
import 'package:act_indiv_dice_roller/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          [Color.fromARGB(255, 5, 62, 37), Color.fromARGB(255, 6, 134, 68)]),
    ),
  ));
}
