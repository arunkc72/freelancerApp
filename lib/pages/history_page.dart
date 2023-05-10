import 'package:brandbuilder_flutter/components/constant.dart';
import 'package:brandbuilder_flutter/components/tile_history.dart';
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/darkThemeBackground.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 20,
                    width: 20.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Vector.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                      //padding: EdgeInsets.symmetric(horizontal: 40),
                      // width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hired",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white38),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        //color: Colors.red,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: history.length,
                            itemBuilder: (context, index) {
                              return TileHistory(index: index);
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Worked",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white38),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        //color: Colors.red,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: history.length,
                            itemBuilder: (context, index) {
                              return TileHistory(index: index);
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
