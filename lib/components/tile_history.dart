import 'package:brandbuilder_flutter/components/constant.dart';
import 'package:flutter/material.dart';

class TileHistory extends StatelessWidget {
  TileHistory({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 86,

        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 64,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  //color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(history[index]['image'].toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            history[index]['name'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            "Total Rating: ${history[index]['rating']}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                            // textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    history[index]['position'].toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Text(
                      "Hi, I am a web developer. I have a 5+ years working experience. \nIt would be great pleasure to work with it.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                          fontSize: 6,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
