import 'package:flutter/material.dart';

class TextButtonSlide extends StatelessWidget {
  const TextButtonSlide({
    super.key,
    this.text,
    this.bColor,
    this.tColor,
    this.onPressed,
  });

  final bColor;
  final tColor;
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: bColor,
      ),
      child: Text(
        text,
        style: TextStyle(color: tColor),
      ),
    );
  }
}
