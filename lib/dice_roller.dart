import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImg = 1;

  void rollDiceHandler() {
    setState(() {
      activeDiceImg = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImg.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDiceHandler,
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
