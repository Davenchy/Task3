import 'package:flutter/material.dart';
import 'package:task3/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
    this.text, {
    Key? key,
    this.fit = false,
    this.margin,
    this.padding,
    this.fontSize,
    this.height,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final bool fit;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fit ? double.infinity : null,
      height: height,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
      ),
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
