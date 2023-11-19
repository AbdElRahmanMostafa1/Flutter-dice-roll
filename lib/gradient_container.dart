import 'package:flutter/material.dart';
import './dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color, {
    key,
  }) : super(key: key);

  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
