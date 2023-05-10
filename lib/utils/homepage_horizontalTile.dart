import 'package:flutter/material.dart';

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
        height: 175,
        width: 150,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [Icon(Icons.star_half), Text('4.6')],
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
