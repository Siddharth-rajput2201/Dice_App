import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      )));
}

class DiceApp extends StatelessWidget {

  int leftdicenumber = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/dice$leftdicenumber.png"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/dice$leftdicenumber.png"),
                  ),
                ),
              ],
            ),
          ),
          OutlineButton(onPressed: (){} , child:  Text("PRESS",style: TextStyle(fontSize: 20),),
            borderSide: BorderSide(color: Colors.white,width: 2),
            color: Colors.white,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),)
        ],
      ),
    );
  }
}
