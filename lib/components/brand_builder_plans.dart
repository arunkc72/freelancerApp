import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:brandbuilder_flutter/components/constant.dart';

class BrandBuilderPlans extends StatefulWidget {
  String planName, planPrice;
  int planId;
  BrandBuilderPlans({
    required this.planId,
    required this.planName,
    required this.planPrice,
    super.key,
  });

  @override
  State<BrandBuilderPlans> createState() => _BrandBuilderPlansState();
}

class _BrandBuilderPlansState extends State<BrandBuilderPlans> {
  bool isSelected = false;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
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
                const SizedBox(height: 43),
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
                  widget.planId.toString().padLeft(2, '0'),
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Yearly",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 16),

                Text(
                  widget.planPrice,
                  style: TextStyle(
                    fontSize: 11,
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
              widget.planName,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
