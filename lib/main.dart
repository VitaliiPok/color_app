// ignore_for_file: use_key_in_widget_constructors 

import 'package:flutter/material.dart';
import './input_page.dart';

void main() => runApp(RandomColorApp());

class RandomColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Random Color Application',
            ),
          ),
        ),
        body: InputPage(),
      ),
    );
  }
}


