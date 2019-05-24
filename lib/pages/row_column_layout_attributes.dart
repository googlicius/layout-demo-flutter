import 'package:flutter/material.dart';
import 'package:flutter_demo_layout/standalones/layout_attribute_selector.dart';

class RowColumnLayoutAttributes extends StatelessWidget {
  RowColumnLayoutAttributes({
    this.onUpdateLayout,
    this.onUpdateMainAxisAlignment,
    this.onUpdateCrossAxisAlignment,
    this.onUpdateMainAxisSize
  });

  final ValueChanged<int> onUpdateLayout;
  final ValueChanged<int> onUpdateMainAxisAlignment;
  final ValueChanged<int> onUpdateCrossAxisAlignment;
  final ValueChanged<int> onUpdateMainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              LayoutAttributeSelector(
                title: 'Layout',
                values: ['row', 'column'],
                onChange: onUpdateLayout,
              ),
              LayoutAttributeSelector(
                title: 'Main Axis Size',
                values: ['min', 'max'],
                onChange: onUpdateMainAxisSize,
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              LayoutAttributeSelector(
                title: 'Main Axis Alignment',
                values: [
                  'start', 'center', 'end', 
                  'space\nbetween', 'space\naround', 'space\nevenly'
                ],
                onChange: onUpdateMainAxisAlignment,
              ),
              LayoutAttributeSelector(
                  title: 'Cross Axis Alignment',
                  values: [
                    'start',
                    'end',
                    'center',
                    'stretch', /*'baseline'*/
                  ],
                  onChange: onUpdateCrossAxisAlignment,
                ),
            ],
          ),
        )
      ],
    );
  }
}