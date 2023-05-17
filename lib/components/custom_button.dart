import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final double? borderRadius;
  const CustomButton({
    required this.height,
    required this.width,
    required this.child,
    this.borderRadius ,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
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
