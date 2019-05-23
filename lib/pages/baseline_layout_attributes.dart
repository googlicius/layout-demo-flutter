import 'package:flutter/material.dart';
import 'package:flutter_demo_layout/standalones/layout_attribute_selector.dart';

class BaselineLayoutAttributes extends StatefulWidget {
  BaselineLayoutAttributes({ this.onUpdateCrossAxisAlignment });

  final ValueChanged<int> onUpdateCrossAxisAlignment;

  @override
  State<StatefulWidget> createState() {
    return BaselineLayoutAttributesState();
  }
}

class BaselineLayoutAttributesState extends State<BaselineLayoutAttributes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: LayoutAttributeSelector(
            title: 'Cross Axis Alignment',
            values: [
              'baseline',
              'start',
              'end',
              'center'
            ],
            onChange: widget.onUpdateCrossAxisAlignment,
          ),
        )
      ],
    );
  }
}