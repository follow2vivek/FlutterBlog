import 'package:flutter/material.dart';
import 'package:flutter_animated_tab/tab/tab_model.dart';
import 'package:animator/animator.dart';

class AnimatedTab extends StatefulWidget {
  final List<TabModel> tabModelList;
  final Function getCallback;
  AnimatedTab({@required this.tabModelList, this.getCallback});
  
  @override
  _AnimatedTabState createState() => _AnimatedTabState();
}

class _AnimatedTabState extends State<AnimatedTab> {
  int lastSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.deepOrange,
      child: Stack(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.tabModelList
                  .map(
                    (f) => Center(
                          child: Text(
                            f.title,
                            style: TextStyle(
                              fontFamily: 'Bold',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                  )
                  .toList(),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widget.tabModelList
                  .map(
                    (f) => f.selected
                        ? Animator(
                            cycles: 1,
                            triggerOnInit: true,
                            curve: Curves.fastOutSlowIn,
                            duration: Duration(milliseconds: 400),
                            tween: Tween<double>(begin: -1, end: 0),
                            builder: (anim) => Transform(
                                  transform: Matrix4.translationValues(
                                    0,
                                    -anim.value * 60,
                                    0,
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width /
                                        widget.tabModelList.length,
                                    height: 60,
                                    child: f.icon,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                          )
                        : InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width /
                                  widget.tabModelList.length,
                              height: 60,
                              color: Colors.transparent,
                            ),
                            onTap: () {
                              setState(() {
                                widget.tabModelList[lastSelectedIndex]
                                    .selected = false;
                                widget
                                    .tabModelList[
                                        widget.tabModelList.indexOf(f)]
                                    .selected = true;
                                lastSelectedIndex =
                                    widget.tabModelList.indexOf(f);
                              });
                              widget
                                  .getCallback(widget.tabModelList.indexOf(f));
                            },
                          ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
