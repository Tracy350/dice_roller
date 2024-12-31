import 'dart:math';

import 'package:dice_roller/theme.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var activedice = 'assets/images/dice-1.png';
  var currentdicerroll = 2;
  final randomizer = Random();

  void rolldice() {
    setState(() {
      currentdicerroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [AppColors.topcolor, AppColors.bottomcolor],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dice-$currentdicerroll.png'),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 25)),
                  onPressed: rolldice,
                  child: Text(
                    'Roll Dice',
                  ))
            ],
          )),
    );
  }
}
