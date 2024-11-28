import 'package:flutter/material.dart';
class CustomLabelText extends StatelessWidget {
  const CustomLabelText({
    super.key,
    required this.text, this.fontSize = 20,
  });
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w300,
          color: Colors.greenAccent,
          fontFamily: 'Poppins'),
    );
  }
}