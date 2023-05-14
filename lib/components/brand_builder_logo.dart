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
            padding: const EdgeInsets.fromLTRB(19, 19, 26, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.white,
                  //   //  blurRadius: 5,
                  //   offset: Offset(2, 8),
                  //   // spreadRadius: 5,
                  //   //blurStyle: BlurStyle.inner,
                  // ),
                ]),
            child: Image.asset('assets/images/brandbuilderCircleLogo.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              size: 16,
              Icons.favorite_outline,
            ),
            // child: Container(
            //   height: 15.29,
            //   width: 16.67,
            //   //padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            //   color: Colors.transparent,
            //   child: Icon(Icons.favorite_border_outlined),
            // ),
          )
        ],
      ),
    );
  }
}
