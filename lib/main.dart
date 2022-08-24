import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.pink, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 1),
              buildKey(color: Colors.yellowAccent, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.lightGreen, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
