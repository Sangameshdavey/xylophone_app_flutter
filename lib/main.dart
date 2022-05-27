import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
    XylophoneApp()); //use arrow for single line function,you might as well use {}

class XylophoneApp extends StatelessWidget {
  void play(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildkey({Color? color, required int number}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(number);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildkey(color: Colors.purple, number: 1),
              buildkey(color: Colors.indigo, number: 2),
              buildkey(color: Colors.blue, number: 3),
              buildkey(color: Colors.green, number: 4),
              buildkey(color: Colors.yellow, number: 5),
              buildkey(color: Colors.orange, number: 6),
              buildkey(color: Colors.red, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
