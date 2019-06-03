import 'package:flutter/material.dart';
import 'package:google_play_design/res/color.dart';

class RecentWidget extends StatelessWidget {
  final imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlwO_HGzIJq-sMTdHwsVSQyqtn8jmc_LdX40WLSYhIBGQzRHpE',
    'https://media.pitchfork.com/photos/5bfc293d7dac23155a9ebcd0/1:1/w_320/neil%20young_songs%20for%20judy.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-KZUZ3AeyYS7mXVXOkCGDPsaZQ_c6SFx0-NjOFTJlniv-WFwh',
    'https://usercontent1.hubstatic.com/14007328_f520.jpg',
    'https://zrockr.com/user-files/uploads/2017/09/365603a-emp.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Recently Added',
            style: TextStyle(
              color: colorGrey,
              fontFamily: 'Medium',
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: imageList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  width: 130,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
