import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  SmallText({
    super.key,
    required this.text,
    this.color = const Color(0x00000001),
    this.size = 14,
    this.height = 1.2,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          height: height,
          fontWeight: FontWeight.w400),
    );
  }
}
