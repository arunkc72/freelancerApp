import 'package:flutter/material.dart';

class GradientBorder extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final TextStyle? textStyle;
  const GradientBorder({
    required this.text,
    this.textStyle,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      height: height,
      width: width,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          width: width - 2,
          height: height - 2,
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
