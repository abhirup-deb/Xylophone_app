import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Sound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                   Sound(1);
                  },
                ),
              ),

              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  Sound(2);
                },
              ),

              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Sound(3);
                },
              ),

              FlatButton(
                color: Colors.green,
                onPressed: () {
                  Sound(4);
                },
              ),

              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  Sound(5);
                  },
              ),

              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  Sound(6);
                },
              ),

              FlatButton(
                color: Colors.red,
                onPressed: () {
                  Sound(7);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
