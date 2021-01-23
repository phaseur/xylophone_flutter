import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioPlayer();
    player.setAsset('note$number.wav');
    player.play();
  }

  Widget buildKey({int number, Color color}) {
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(number);
        },
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
            children: <Widget>[
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellow),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.teal),
              buildKey(number: 6, color: Colors.blue),
              buildKey(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
