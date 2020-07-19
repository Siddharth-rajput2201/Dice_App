import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Dice'),
        ),
        body: DiceApp(),
      )));
}


class DiceApp extends StatefulWidget {

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> with TickerProviderStateMixin{

  int leftdicenumber = 3;
  int rightdicenumber = 3;
  AnimationController _anglecontroller;
  var _angle = 0.0;



  @override
  void initState() {
    super.initState();
    _anglecontroller = AnimationController(vsync: this,duration: Duration(milliseconds: 250));
    _anglecontroller.addListener(() {
      setState(() {
        _angle = _anglecontroller.value *  45/360 * 2 * pi * 4;
      });
    });
  }


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
                    child: Transform.rotate(angle: _angle ,child: Image.asset("assets/images/dice$leftdicenumber.png")),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Transform.rotate(angle: _angle ,child: Image.asset("assets/images/dice$rightdicenumber.png")),
                  ),
                ),
              ],
            ),
          ),
          OutlineButton(onPressed: (){
            setState(() {
              leftdicenumber = Random().nextInt(6)+1;
              rightdicenumber = Random().nextInt(6)+1;
              _rotatedice();
            });
          } , child:  Text("PRESS",style: TextStyle(fontSize: 20),),
            borderSide: BorderSide(color: Colors.white,width: 2),
            color: Colors.white,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),)
        ],
      ),
    );
  }

  void _rotatedice() {
      if(_anglecontroller.status == AnimationStatus.completed)
      {
        _anglecontroller.reverse();
      }
      else if (_anglecontroller.status == AnimationStatus.dismissed)
      {
        _anglecontroller.forward();
      }
  }
}
