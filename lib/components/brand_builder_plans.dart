import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:brandbuilder_flutter/components/constant.dart';

class BrandBuilderPlans extends StatelessWidget {
  String planName, planPrice;
  int planId;
  bool isSelected;
  final VoidCallback onTap;

  BrandBuilderPlans({
    required this.planId,
    required this.planName,
    required this.planPrice,
    required this.onTap,
    required this.isSelected,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 153,
            width: 114,
            decoration: BoxDecoration(
              border: isSelected
                  ? GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
                      ),
                    )
                  : null,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.transparent, spreadRadius: 5),
                BoxShadow(color: Colors.transparent, blurRadius: 4),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 27 + 16,
                ),
                // Container(
                //   // padding: const EdgeInsets.only(top: -10),
                //   height: 27,
                //   width: 113,
                //   decoration: BoxDecoration(
                //     gradient: const LinearGradient(
                //       colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
                //       begin: Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //     ),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   child: Center(
                //     child: Text(
                //       planName,
                //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                //     ),
                //   ),
                // ),
                Text(
                  planId.toString().padLeft(2, '0'),
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Yearly",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  planPrice,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 27,
          width: 113,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              planName,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
