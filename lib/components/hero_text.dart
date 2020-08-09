import 'package:flutter/material.dart';

class HeroText extends StatelessWidget {
  final String text;
  final String tag;
  final TextStyle style;
  final TextAlign align;

  HeroText({
    @required this.text,
    @required this.tag,
    @required this.style,
    this.align: TextAlign.start,
  });
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        type: MaterialType.transparency,
        child: Text(
          text,
          style: style,
          textAlign: align,
        ),
      ),
    );
  }
}
