import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/Images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // 往上推 20px
            padding: const EdgeInsets.only(
              top: 20,
            ),
            // 設定文字為白色
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              // 設定文字大小為 28px
              fontSize: 28,
            ),
          ),
          // 設定按鈕文字為 Roll Dice
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              // 新增文字陰影
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.5),
                  blurRadius: 2.5,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
