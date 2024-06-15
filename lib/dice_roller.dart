import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State <DiceRoller> {
  int currentdiceroll = 2;

  void rolldice() {
    setState(() {
      currentdiceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/die$currentdiceroll.png",
          width: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle:
                const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          child: const Text("\t\t\t\t   Click Here \n To Roll The Dice"),
        ),
        const Text(
          "DEVELOPED BY BIGYAN",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    );
  }
}
