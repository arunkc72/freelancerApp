import 'package:brandbuilder_flutter/components/constant.dart';
import 'package:flutter/material.dart';

class TileHistory extends StatelessWidget {
  TileHistory({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 68,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(history[index]['image'].toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                history[index]['name'].toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                history[index]['position'].toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: Text(
                  "message here",
                  // history[index]['name'].toString(),
                  style: TextStyle(
                    overflow: TextOverflow.fade,

                    color: Colors.black,
                    fontSize: 10,
                    //fontWeight: FontWeight.w600),)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "Total Rating:",
            // history[index]['name'].toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            history[index]['rating'].toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
