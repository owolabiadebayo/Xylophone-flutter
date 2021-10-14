import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  void playSound(int? soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildplay({Color? color, int? soundNumber, String? text}) {
    return Expanded(
      child: FlatButton(
        child: Text("$text"),
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
          backgroundColor: Colors.amber,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildplay(color: Colors.red, soundNumber: 1, text: "piano1"),
              buildplay(color: Colors.yellow, soundNumber: 1, text: "piano2"),
              buildplay(color: Colors.green, soundNumber: 1, text: "piano3"),
            ],
          ))),
    );
  }
}
