import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class BrandBuilderPlans extends StatelessWidget {
  String? planId, planName, planPrice;
  BrandBuilderPlans({
    required this.planId,
    required this.planName,
    required this.planPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 105,
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
              ),
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.transparent, spreadRadius: 5),
              BoxShadow(color: Colors.transparent, blurRadius: 4),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  planId!,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Text(
                "Yearly",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                planPrice!,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 27,
          width: 105,
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
              planName!,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
