import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
        elevation: 10,
        leading: Container(
          child: Image.asset('assets/images/logo.png',
          ),
          // width: 70,
          height: 60,
        ),
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: Color(0xff0a2e4e),
      ),
      body: DiceGame(
      ),
    ),
  ));
}
class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}
class _DiceGameState extends State<DiceGame> {
  int leftDice = 1;
  int rightDice = 2;

  rollDices() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice =  Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/bg.png'),
        fit: BoxFit.cover,
        )),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Expanded(
              child: TextButton(
                onPressed: (){
                  rollDices();
                },
                // padding: EdgeInsets.all(8.0),
                child: Image.asset('assets/images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed:(){
                  rollDices();
                } ,
                // padding: EdgeInsets.all(8.0),
                child: Image.asset('assets/images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



