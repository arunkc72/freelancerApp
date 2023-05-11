import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeVerticalTile extends StatelessWidget {
  final String title;
  final double money;

  const HomeVerticalTile({super.key, required this.title, required this.money});

  // const HomeVerticalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 387,
      height: 72,
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/freelancerprofile.png',
              height: 44,
              width: 44,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 21,
                width: 188,
                child: Text('I am a sentence.place here random random ',
                    // textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$' + money.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                // padding: EdgeInsets.all(6),
                height: 19,
                width: 58,
                decoration: BoxDecoration(
                    color: Color(0xff09C9D6),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'monthly',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      // child: ListTile(
      //   leading: Container(
      //     height: 44,
      //     width: 44,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(50),
      //     ),
      //     child: Image.asset(
      //       'assets/images/freelancerprofile.png',
      //       fit: BoxFit.fill,
      //     ),
      //   ),
      //   title: Text(
      //     title,
      //     style: TextStyle(
      //         fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
      //   ),
      //   subtitle: Text('I am a sentence.place here random random ',
      //       style: TextStyle(
      //           fontSize: 10,
      //           color: Colors.black,
      //           fontWeight: FontWeight.w300)),
      //   trailing: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Text(
      //         '\$' + money.toString(),
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 16,
      //             fontWeight: FontWeight.w600),
      //       ),
      //       Container(
      //         padding: EdgeInsets.all(6),
      //         height: 19,
      //         width: 58,
      //         decoration: BoxDecoration(
      //             color: HexColor("#09C9D6"),
      //             borderRadius: BorderRadius.circular(15)),
      //         child: Text(
      //           'monthly',
      //           style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
