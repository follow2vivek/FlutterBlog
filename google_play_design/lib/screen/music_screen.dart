import 'package:flutter/material.dart';
import 'package:google_play_design/res/color.dart';
import 'package:google_play_design/res/style.dart';
import 'package:google_play_design/widget/recent_widget.dart';
import 'package:google_play_design/widget/songs_widget.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 110,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [colorAppYellow, colorAppOrange],
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: colorAppYellow.withOpacity(0.5),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Music Player',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: TabBar(
                        controller: _controller,
                        indicatorColor: Colors.white,
                        indicatorWeight: 3,
                        isScrollable: true,
                        labelStyle: tabTextStyle,
                        unselectedLabelColor: Colors.white.withOpacity(0.5),
                        tabs: [
                          Tab(
                            text: 'Playlist',
                          ),
                          Tab(
                            text: 'Songs',
                          ),
                          Tab(
                            text: 'Artist',
                          ),
                          Tab(
                            text: 'Albums',
                          ),
                          Tab(
                            text: 'Recents',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          'Playlist',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: RecentWidget(),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'All Songs',
                                style: TextStyle(
                                  color: colorGrey,
                                  fontFamily: 'Medium',
                                  fontSize: 14,
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Icons.shuffle,
                                color: colorAppYellow,
                                size: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Shuffle All',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Medium',
                                  color: colorAppYellow,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SongsWidget()
                        ],
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Artist',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Albums',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Recents',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
