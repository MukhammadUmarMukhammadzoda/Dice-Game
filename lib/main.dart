import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body:DicePage(),
  )));
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_diece = 1;
  int right_diece = 1;
  int score1 = 0;
  int score2 = 0;
  String win = "";
  void Change(){
    left_diece = Random().nextInt(6)+1;
    right_diece = Random().nextInt(6)+1;
    if(left_diece > right_diece){
      win = "Left side is win";
      score1+=1;
    }
    else if(left_diece < right_diece){
      win = "Right side is win";
      score2+=1;
    }
    else {
      win = "Draw";
    }
  }

@override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(win,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                      });
                    },
                    child: Image.asset("images/dice$left_diece.png"
                    ),
                  ),
                )
            ),
            Expanded(
              child:
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: (){
                    },
                  child: Image.asset("images/dice$right_diece.png"),))),


        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "$score1",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),

            ),
            Text(
              "$score2",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),

            ),


          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),

            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FlatButton(

                      color: Colors.grey[900 ],
                      onPressed:((){
                        setState(() {
                          Change();
                        });

                      }
                      ),
                      child: Text("Click",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ]
    );
  }}




