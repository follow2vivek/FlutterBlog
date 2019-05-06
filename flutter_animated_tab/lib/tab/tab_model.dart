import 'package:flutter/widgets.dart';

class TabModel {
  String title;
  Icon icon;
  bool selected;
  TabModel({@required this.title, @required this.icon, this.selected = false});
}
