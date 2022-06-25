import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playsound(int num) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/assets_note$num.wav"),
    );
    assetsAudioPlayer.play();
  }

  Expanded BuildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              BuildKey(1, Colors.red),
              BuildKey(2, Colors.blue),
              BuildKey(3, Colors.green),
              BuildKey(4, Colors.yellow),
              BuildKey(5, Colors.pink),
              BuildKey(6, Colors.orange),
              BuildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
