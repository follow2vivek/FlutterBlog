import 'package:flutter/material.dart';
import 'package:google_play_design/model/songs_model.dart';

class SongsWidget extends StatelessWidget {
  final List<SongsModel> songList = [
    SongsModel(
        imageUrl: 'https://zrockr.com/user-files/uploads/2017/09/365603a-emp.jpg',
        title: 'A sound from the heaven',
        singer: 'Orchestry Saga',
        duration: '2:58'),
    SongsModel(
        imageUrl: 'https://usercontent1.hubstatic.com/14007328_f520.jpg',
        title: "Baby, Let's do some shalala",
        singer: 'Keron Jackson',
        duration: '3:38'),
    SongsModel(
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-KZUZ3AeyYS7mXVXOkCGDPsaZQ_c6SFx0-NjOFTJlniv-WFwh',
        title: 'Beat it if you get it',
        singer: 'Hippor Saga',
        duration: '3:23'),
    SongsModel(
        imageUrl: 'https://media.pitchfork.com/photos/5bfc293d7dac23155a9ebcd0/1:1/w_320/neil%20young_songs%20for%20judy.jpg',
        title: 'Daniol the last over',
        singer: 'Jazzilo Band',
        duration: '2:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
