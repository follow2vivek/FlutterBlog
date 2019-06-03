import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_play_design/screen/music_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicScreen(),
    ),
  );
}
