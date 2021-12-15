import 'package:flutter/material.dart';

class AssetFadeBackImage extends StatelessWidget {
  const AssetFadeBackImage(
    this.asset, {
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.topColor,
    this.bottomColor,
  }) : super(key: key);

  final String asset;
  final Color backgroundColor;
  final Color? topColor;
  final Color? bottomColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: topColor == null && bottomColor == null
            ? null
            : LinearGradient(
                colors: [
                  backgroundColor,
                  topColor ?? backgroundColor,
                  bottomColor ?? backgroundColor,
                  backgroundColor,
                ],
                stops: [0.0, 0.05, 0.95, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
      ),
      child: Image.asset(asset, fit: BoxFit.cover),
    );
  }
}
