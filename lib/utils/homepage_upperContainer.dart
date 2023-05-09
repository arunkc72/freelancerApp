import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  final String companyName;
  final String companyType;
  final String logoPath;

  const UpperContainer(
      {super.key,
      required this.companyName,
      required this.logoPath,
      required this.companyType});

  // const UpperContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 100,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(logoPath),
          SizedBox(
            height: 10,
          ),
          Text(
            companyName,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            companyType,
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
