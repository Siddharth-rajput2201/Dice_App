import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice'),
      ),
      body: DiceApp(),
    )
  ));
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


