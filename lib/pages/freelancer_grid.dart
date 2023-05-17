import 'package:brandbuilder_flutter/components/default_scaffold.dart';
import 'package:flutter/material.dart';

import '../components/searchbar.dart';

class FreelancerGrid extends StatefulWidget {
  const FreelancerGrid({Key? key}) : super(key: key);

  @override
  _FreelancerGridState createState() => _FreelancerGridState();
}

class _FreelancerGridState extends State<FreelancerGrid> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(children: [
      SizedBox(height: 17),
      SearchBar(),
      SizedBox(height: 32),
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 50,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                height: 105,
                width: 80,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )),
                      child: Stack(
                        children: [
                          Image.asset(
                            (index % 3 == 0)
                                ? 'assets/images/nikitaboss.png'
                                : (index % 3 == 1)
                                    ? 'assets/images/nikitaboss2.png'
                                    : 'assets/images/nikitaboss3.png',
                            fit: BoxFit.fill,
                            width: 80,
                            height: 86,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nikita Boss',
                                  style: TextStyle(
                                    fontSize: 8,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_half,
                                      size: 7,
                                      color: Color(0xfffffd54),
                                    ),
                                    Text(
                                      '4.6',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 18,
                      color: Colors.white,
                      child: Text(
                        'Web Developer',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
    ]);
  }
}
