import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  playMusic(int soundNumber) {
    print('playMusic');
      final player = AudioCache();
      player.play('note$soundNumber.wav');
  }

  Expanded renderPlayerCard(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playMusic(soundNumber);
        },
        color: color,
        child: Text(""),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Let's Play Music"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              renderPlayerCard(Colors.red, 1),
              renderPlayerCard(Colors.orange, 2),
              renderPlayerCard(Colors.yellow, 3),
              renderPlayerCard(Colors.green, 4),
              renderPlayerCard(Colors.teal, 5),
              renderPlayerCard(Colors.blue, 6),
              renderPlayerCard(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
