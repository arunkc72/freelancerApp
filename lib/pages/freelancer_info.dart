import 'package:brandbuilder_flutter/components/default_scaffold.dart';
import 'package:flutter/material.dart';

import '../components/searchbar.dart';

class FreelancerInfo extends StatefulWidget {
  const FreelancerInfo({Key? key}) : super(key: key);

  @override
  _FreelancerInfoState createState() => _FreelancerInfoState();
}

class _FreelancerInfoState extends State<FreelancerInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      children: [
        SizedBox(height: 17),
        SearchBar(),
        SizedBox(height: 32),
        GridView.builder(
          padding: EdgeInsets.zero,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                    padding: EdgeInsets.all(11),
                    // height: 86,
                    // width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            offset: Offset(2, 4),
                            blurRadius: 6,
                          ),
                        ]),
                    child: Row(
                      children: [
                        Image.asset(
                          index % 2 == 0
                              ? 'assets/images/nikitaboss.png'
                              : 'assets/images/nikitaboss2.png',
                          height: 64,
                          width: 46,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Nikita Boss',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 24),
                                Icon(
                                  Icons.star_half,
                                  size: 7,
                                  color: Color(0xffFFFD54),
                                ),
                                Text(
                                  '4.6',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Text(
                              'Web Developer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                                height: 40,
                                width: 96,
                                child: Text(
                                  'Hi, I am a web developer. I have a 5+ years working experience. It would be great pleasure to work with it.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        )
                      ],
                    )),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 11,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(4, 4, 4, 0.38),
                          Color.fromRGBO(79, 78, 78, 0.24),
                          Color.fromRGBO(130, 130, 130, 0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 11,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(130, 130, 130, 0),
                          Color.fromRGBO(79, 78, 78, 0.24),
                          Color.fromRGBO(4, 4, 4, 0.38)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
