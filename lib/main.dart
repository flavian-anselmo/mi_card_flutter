import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  _DicePageState() : super();//CONSTRACTOR 
  void diceValue() {
    //this function will be called once we press the button
    leftDice = new Random().nextInt(6) + 1; //CHANGE TTHE LEFT VALUE
    rightDice = new Random().nextInt(6) + 1; //CHANGE THE RIGHT VALUE
  }

  @override
  Widget build(BuildContext context) {
    //leftDice = 5;
    return Center(
      child: Row(
        //a row usually has children (runni)
        //use expanded to fit the image
        //mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Expanded(
            //flex:1,
            //flex prperty is just a ratio

            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  //anonymous function
                  //that will make when the button is pressed
                  //print("left button pressed");
                  setState(() {
                    //call the function to change the value of the dice
                    diceValue();
                  });
                  print(leftDice);
                },
                //this will be redrawn
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            //flex: 1,
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  //print("right button pressed ");
                  setState(() {
                    //call the function to change the value of the dicee
                    diceValue();
                  });
                  print(rightDice);
                },
                child: Image.asset('images/dice$rightDice.png')),
            //child: Image.asset('images/dice1.png'),
            //can only have one child
          ),
        ],
      ),
    );
  }
}
