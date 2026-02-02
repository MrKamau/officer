import 'package:flutter/material.dart';

class Commontext extends StatelessWidget {
  final String? text;
  Color? color;
  double size;
  Commontext({
    super.key,
    required this.text,
    this.color = const Color(0x00000001),
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: 1,
      style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size,
          fontWeight: FontWeight.w500),
    );
  }
}
