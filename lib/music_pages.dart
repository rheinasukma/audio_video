import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Music extends StatelessWidget {
  AudioPlayer advancedplayer1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Play Musik",
              ),
              Image(image: AssetImage("assets/musik.jpg")),
              ElevatedButton(
                child: Text(
                  'Play',
                ),
                onPressed: () async {
                  advancedplayer1 = await AudioCache().play('Iphone.mp3');
                },
              ),
              ElevatedButton(
                child: Text(
                  'Pause',
                ),
                onPressed: () async {
                  advancedplayer1.pause();
                },
              ),
              ElevatedButton(
                child: Text(
                  'Resume',
                ),
                onPressed: () async {
                  advancedplayer1.resume();
                },
              ),
              ElevatedButton(
                child: Text(
                  'Stop',
                ),
                onPressed: () async {
                  advancedplayer1.stop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
