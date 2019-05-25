import 'package:flutter/material.dart';
import 'package:flutter_demo_layout/standalones/layout_type.dart';

class KeyPage extends StatefulWidget implements HasLayoutGroup {
  KeyPage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;
  @override
  State createState() => _KeyPageState();
}

class _KeyPageState extends State<KeyPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
