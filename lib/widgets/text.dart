import 'package:flutter/material.dart';

class TextPortafolio extends StatelessWidget {
  const TextPortafolio({
    super.key,
    required this.text,
    required this.size,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.textAlign,
  });
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Ubuntu Regular',
        fontSize: size,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? Colors.black,
      ),
      maxLines: maxLines ?? 1,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
