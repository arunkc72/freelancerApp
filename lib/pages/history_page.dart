import 'package:brandbuilder_flutter/components/constant.dart';
import 'package:brandbuilder_flutter/components/tile_history.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/darkThemeBackground.png"),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 38,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 20,
                      )),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(children: [
                    Expanded(
                      child: Container(
                        //padding: EdgeInsets.symmetric(horizontal: 40),
                        // width: 300,
                        height: 37,
                        padding: EdgeInsets.only(left: 9),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 18,
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              )),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 27,
                  ),
                  Text(
                    "Hired",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 21,
                  ),

                  // ListView.builder(
                  //     itemCount: history.length,
                  //     itemBuilder: (context, index) {
                  //       return TileHistory(index: index);
                  //     }),
                  TileHistory(index: 0),
                  const SizedBox(
                    height: 13,
                  ),
                  TileHistory(index: 1),
                  const SizedBox(
                    height: 13,
                  ),
                  TileHistory(index: 2),

                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    "Worked for",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: history.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: TileHistory(index: index),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
