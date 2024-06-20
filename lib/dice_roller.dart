import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  int currentNumber = 1;

  void rollDice() {
    setState(() {
      currentNumber = randomNumber();
      activeDiceImage = 'assets/images/dice-$currentNumber.png';
    });
  }

  int randomNumber() {
    return Random().nextInt(6) + 1;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyledText(text: "Dice Number: $currentNumber"),
        const SizedBox(height: 20),
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 40,
              right: 40
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18
            )
          ),
          child: const Text('Roll Dice')
        ),
      ],
    );
  }
}