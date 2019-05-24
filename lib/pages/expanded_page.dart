import 'package:flutter/material.dart';
import 'package:flutter_demo_layout/standalones/layout_type.dart';
import 'main_app_bar.dart';

class ExpandedPage extends StatelessWidget implements HasLayoutGroup {
  ExpandedPage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;
}