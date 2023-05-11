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
      height: 105,
      width: 120,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 39, width: 39, child: Image.asset(logoPath)),
          SizedBox(
            height: 10,
          ),
          Text(
            companyName,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 10),
          ),
          Text(
            companyType,
            style: TextStyle(
                color: Colors.black, fontSize: 7, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
