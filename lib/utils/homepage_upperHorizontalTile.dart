import 'package:flutter/material.dart';

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
                  ? Border.all(color: Colors.orange)
                  : Border.all(width: 0),
              borderRadius: isSelected
                  ? BorderRadius.circular(12)
                  : BorderRadius.circular(0)),
          child: Text(
            jobType,
            style: TextStyle(color: isSelected ? Colors.pink : Colors.white),
          ),
        ),
      ),
    );
  }
}
