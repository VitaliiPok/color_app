// ignore_for_file: use_key_in_widget_constructors 

import 'package:flutter/material.dart';

// this class was created to reuse the widget

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {required this.onPressed, required this.cardChild, required this.color});

  final VoidCallback onPressed;
  final Widget cardChild;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: cardChild,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}