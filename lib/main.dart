import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$i.wav'),
    );
  }

  Expanded buildKey({Color color, int soundName}) {
    var expanded = Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundName);
        },
        child: null,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );

    return expanded;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundName: 1),
              buildKey(color: Colors.orange, soundName: 2),
              buildKey(color: Colors.yellow, soundName: 3),
              buildKey(color: Colors.green, soundName: 4),
              buildKey(color: Colors.blue, soundName: 5),
              buildKey(color: Colors.purple, soundName: 6),
              buildKey(color: Colors.pink, soundName: 7),
            ],
          ),
        ),
      ),
    );
  }
}
