import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 140, 255),
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: const Color.fromARGB(255, 26, 112, 182),
          ),
          body: Ball(),
        ),
        
      ),
    );

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int number = 1;
    void changenumber(){
      setState(() {
            number = Random().nextInt(5)+1;
          });

    }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: [Expanded(child: TextButton(onPressed: () { 
          changenumber();
         },
        child: Image.asset('images/ball$number.png')))],
      ),
    );
  }
}