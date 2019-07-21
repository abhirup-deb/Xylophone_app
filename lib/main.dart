import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Sound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

   Key(int no,Color Cr) {
   return Expanded(
     child: FlatButton(
       color: Cr,
         onPressed: () {
           Sound(no);
         }
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
            children: <Widget> [
              Key(1,Colors.deepPurple),
              Key(2,Colors.indigo),
              Key(3,Colors.blue),
              Key(4,Colors.green),
              Key(5,Colors.yellow),
              Key(6,Colors.orange),
              Key(7,Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
