import 'package:flutter/material.dart';

class BrandBuilderLogo extends StatelessWidget {
  const BrandBuilderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            //padding: EdgeInsets.symmetric(horizontal: ),
            width: 134,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 160,
            height: 134,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/images/brandbuilderCircleLogo.png"),
                ),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.white,
                  //   //  blurRadius: 5,
                  //   offset: Offset(2, 8),
                  //   // spreadRadius: 5,
                  //   //blurStyle: BlurStyle.inner,
                  // ),
                ]),
          ),
          Positioned(
            bottom: -3,
            right: -2,
            child: Container(
              // height: 16,
              // width: 16,
              color: Colors.transparent,
              child: Icon(Icons.favorite_border_outlined),
            ),
          )
        ],
      ),
    );
  }
}
