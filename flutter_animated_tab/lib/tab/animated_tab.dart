import 'package:flutter/material.dart';
import 'package:flutter_animated_tab/tab/tab_model.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class AnimatedTab extends StatefulWidget {
  final List<TabModel> tabModelList;
  int lastSelectedIndex = 0;
  AnimatedTab({@required this.tabModelList});
  @override
  _AnimatedTabState createState() => _AnimatedTabState();
}

class _AnimatedTabState extends State<AnimatedTab>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  SequenceAnimation sequenceAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
          animatable: Tween<double>(begin: -1, end: 1),
          from: Duration(seconds: 0),
          tag: 'slide',
          to: Duration(seconds: 2),
        )
        .animate(animationController);
  }

  Future<Null> _playAnimation() async {
    try {
      await animationController.forward().orCancel;
    } on TickerCanceled {}
  }

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
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: f.selected
                                ? AnimatedBuilder(
                                    animation: animationController,
                                    builder:
                                        (BuildContext context, Widget child) {
                                      print(sequenceAnimation['slide'].value);
                                      return Transform(
                                        transform: Matrix4.translationValues(
                                          0,
                                          sequenceAnimation['slide'].value,
                                          0,
                                        ),
                                        child: f.icon,
                                      );
                                    },
                                  )
                                : Text(
                                    f.title,
                                    style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
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
                        _playAnimation();
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
