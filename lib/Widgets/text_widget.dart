import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
 final String text; 
 final  double fontsize;
 final FontWeight fontWeight;
 final Color color;
  const TextWidget({super.key, required this.text, required this.fontsize, required this.fontWeight, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
    color: color,
    fontSize: fontsize, fontWeight: fontWeight),);
  }
}