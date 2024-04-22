import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import './default_button.dart';
import '../../model/button_click.dart';

class ButtonsView extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const ButtonsView({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      axisDirection: AxisDirection.down,
      children: [
        DefaultButton(
          value: '%',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: 'C',
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        DefaultButton(
          value: 'backspace',
          color: Colors.red[300],
          onTap: (value) => onButtonClick(BackSpaceButtonClick(value)),
        ),
        DefaultButton(
          value: '÷',
          color: Colors.orange[300],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '7',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '8',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '9',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: 'x',
          color: Colors.orange[300],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '4',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '5',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '6',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '-',
          color: Colors.orange[300],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '1',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '2',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '3',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '+',
          color: Colors.orange[300],
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '0',
          crossAxisCell: 2,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '.',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        DefaultButton(
          value: '=',
          color: Colors.orange[300],
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}
