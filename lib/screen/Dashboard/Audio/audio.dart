import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

import 'package:infraa/screen/mixlandingpage/mixlandingpage.dart';





class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  @override
  void dispose() {
    player.dispose(); // Dispose the player when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Music",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  fontFamily: "inter",
                ),
              ),
            ),




            Image.asset(
              'assets/images/images.png',

            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    player.play(AssetSource('ok.mp3'));
                  },
                  icon: Icon(Icons.play_arrow),
                  iconSize: 48,
                ),
                IconButton(
                  onPressed: () {
                    player.stop();
                  },
                  icon: Icon(Icons.stop),
                  iconSize: 48,
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
