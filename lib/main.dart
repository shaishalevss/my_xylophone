import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildButton(Color color, int num) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(Colors.red,1),
              buildButton(Colors.orange,2),
              buildButton(Colors.yellow,3),
              buildButton(Colors.green,4),
              buildButton(Colors.teal,5),
              buildButton(Colors.blue,6),
              buildButton(Colors.purple,7),

            ],
          ),
        ),
      ),
    );
  }
}
