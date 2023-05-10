import 'package:flutter/material.dart';

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
          height: 130,
          width: 110,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF2F2E2E),
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(color: Colors.transparent),
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
          width: 110,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
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
