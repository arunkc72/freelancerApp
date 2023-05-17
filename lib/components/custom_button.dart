import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final bool? moreBorderRadius;
  final double? borderRadius;
  final Widget child;
  const CustomButton({
    required this.height,
    required this.width,
    required this.child,
    this.borderRadius,
    this.moreBorderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff65F4CD),
                Color(0xff5A5BF3),
              ])),
      child: child,
    );
  }
}
