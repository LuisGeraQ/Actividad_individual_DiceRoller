import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  var _name = 'User'; // Nombre por defecto

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // Valor entre 1 y 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 38,
                ),
              ),
              child: const Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Roll ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'Dice!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20), // Espacio adicional
        const Text(
          'If you dare...',
          overflow: TextOverflow.ellipsis,
        ),
        Visibility(
          visible: currentDiceRoll == 3,
          child: Image.asset(
            'assets/images/pedro.jpg',
            width: 300,
          ),
        ),
      ],
    );
  }
}
