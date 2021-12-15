import 'package:flutter/material.dart';

class SectionIndicator extends StatelessWidget {
  const SectionIndicator({
    Key? key,
    this.index = 0,
    this.indicatorSize = 6,
    this.margin: 6,
    required this.length,
    required this.selectedColor,
    required this.unSelectedColor,
  }) : super(key: key);

  final int index;
  final double indicatorSize;
  final double margin;
  final int length;
  final Color selectedColor;
  final Color unSelectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < length; i++)
          Container(
            margin: EdgeInsets.all(margin),
            width: indicatorSize,
            height: indicatorSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == index ? selectedColor : unSelectedColor,
            ),
          ),
      ],
    );
  }
}
