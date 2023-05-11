import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HorizontalTile extends StatelessWidget {
  final String name;
  final String imagePath;

  const HorizontalTile(
      {super.key, required this.name, required this.imagePath});

  // const HorizontalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160,
        width: 141,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 1,
                  // ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_half,
                        color: HexColor("#FFFD54"),
                      ),
                      Text('4.6',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
