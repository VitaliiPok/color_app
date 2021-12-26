// ignore_for_file: use_key_in_widget_constructors 

import 'package:flutter/material.dart';
import 'dart:math';
import './constants.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color randomColor = const Color.fromRGBO(255, 255, 255, 1);

  void getRandomColor() {
    setState(
      () {
        randomColor = Color.fromRGBO(
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
          1,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onPressed: getRandomColor,
      cardChild: const Text(
        'Hey there',
        style: kCenterTextStyle,
      ),
      color: randomColor,
    );
  }
}
