import 'package:flutter/material.dart';

class GradientBorder extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double radius;
  final Widget child;
  const GradientBorder({
    required this.child,
    required this.radius,
    this.padding,
    this.textStyle,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
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
              color: Colors.black, borderRadius: BorderRadius.circular(radius)),
          width: width - 2,
          height: height - 2,
          child: child),
    );
  }
}
