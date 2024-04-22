import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DefaultButton extends StatelessWidget {
  final String value;
  final Color? color;
  final Function(String value)? onTap;
  final int? crossAxisCell;

  const DefaultButton({
    super.key,
    required this.value,
    this.color,
    this.onTap,
    this.crossAxisCell,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final borderColor = color != null ? color!.withAlpha(50) : Colors.grey;

    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCell ?? 1,
      mainAxisCellCount: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Material(
          color: color ?? Colors.grey[600],
          child: InkWell(
            onTap: onTap != null ? () => onTap!(value) : null,
            child: Container(
              width: 60,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: borderColor),
              ),
              child: value == 'backspace'
                  ? const Icon(Icons.backspace_outlined)
                  : Center(
                      child: Text(
                        value,
                        style: textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
