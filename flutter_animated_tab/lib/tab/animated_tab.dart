import 'package:flutter/material.dart';
import 'package:flutter_animated_tab/tab/tab_model.dart';
import 'package:animator/animator.dart';

class AnimatedTab extends StatefulWidget {
  final List<TabModel> tabModelList;
  int lastSelectedIndex = 0;
  AnimatedTab({@required this.tabModelList});
  @override
  _AnimatedTabState createState() => _AnimatedTabState();
}

class _AnimatedTabState extends State<AnimatedTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.deepOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.tabModelList
            .map(
              (f) => InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        f.selected
                            ? Animator(
                                cycles: 1,
                                triggerOnInit: true,
                                curve: Curves.fastOutSlowIn,
                                duration: Duration(milliseconds: 400),
                                tween: Tween<double>(begin: -1, end: 0),
                                builder: (anim) => Transform(
                                      transform: Matrix4.translationValues(
                                          0, -anim.value * 60, 0),
                                      child: f.icon,
                                    ),
                              )
                            : Animator(
                                cycles: 1,
                                tween: Tween<double>(begin: 0, end: 1),
                                duration: Duration(milliseconds: 300),
                                builder: (anim) => Center(
                                      child: Opacity(
                                        child: Text(
                                          f.title,
                                          style: TextStyle(
                                            fontFamily: 'Bold',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        opacity: anim.value,
                                      ),
                                    ),
                              ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        widget.tabModelList[widget.lastSelectedIndex].selected =
                            false;
                        widget.tabModelList[widget.tabModelList.indexOf(f)]
                            .selected = true;
                        widget.lastSelectedIndex =
                            widget.tabModelList.indexOf(f);
                      });
                    },
                  ),
            )
            .toList(),
      ),
    );
  }
}
