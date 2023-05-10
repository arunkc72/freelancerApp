import 'package:brandbuilder_flutter/utils/gradient_border.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HomeHorizonalTile extends StatelessWidget {
  final bool isSelected;
  final String jobType;
  final VoidCallback onTap;

  const HomeHorizonalTile(
      {super.key,
      required this.isSelected,
      required this.jobType,
      required this.onTap});

  // const HomeHorizonalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Container(
          // height: 10,
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              border: isSelected
                  ? GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
                      ),
                    )
                  : Border.all(width: 0),
              borderRadius: isSelected
                  ? BorderRadius.circular(20)
                  : BorderRadius.circular(0)),
          child: Text(
            jobType,
            // style: TextStyle(color: isSelected ? Colors.pink : Colors.white),
          ),
        ),
      ),
    );
  }
}
