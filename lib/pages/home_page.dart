import 'package:brandbuilder_flutter/utils/homepage_horizontalTile.dart';
import 'package:brandbuilder_flutter/utils/homepage_upperContainer.dart';
import 'package:brandbuilder_flutter/utils/homepage_upperHorizontalTile.dart';
import 'package:brandbuilder_flutter/utils/homepage_verticalTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobType = [
    ['Application Developer'],
    ['Project Manager'],
    ['Designer'],
    ['Tester'],
    ['Marketing'],
  ];

  final List People = [
    ['Nikita Boss', 'assets/images/person2.png'],
    ['John Jack', 'assets/images/freelancerprofile.png'],
    ['Gal Boss', 'assets/images/person2.png'],
  ];
  final List subsType = [
    ['Server Name', 10.00],
    ['Shopify Website', 20.00],
    ['Hosting', 99.00],
    ['Random Name', 50.00],
  ];

  int? selectedJobIndex;
  jobSelect(int index) {
    setState(() {
      selectedJobIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/darkThemeBackground.png"),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Zeal Heal',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Companies',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UpperContainer(
                      companyName: 'BrandBuilder',
                      logoPath: 'assets/images/brandbuilderLogo.png',
                      companyType: 'IT Company'),
                  UpperContainer(
                      companyName: 'InGrails',
                      logoPath: 'assets/images/ingrailsLogo.png',
                      companyType: 'IT Company'),
                  UpperContainer(
                      companyName: 'IMS',
                      logoPath: 'assets/images/imsLogo.png',
                      companyType: 'Software Company'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FreeLancer',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jobType.length,
                  itemBuilder: (context, index) {
                    return HomeHorizonalTile(
                        isSelected: selectedJobIndex == index,
                        jobType: jobType[index][0],
                        onTap: () {
                          jobSelect(index);
                        });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 175,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: People.length,
                  itemBuilder: (context, index) {
                    return HorizontalTile(
                      imagePath: People[index][1],
                      name: People[index][0],
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Service As Subscription',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                    itemCount: subsType.length,
                    itemBuilder: (context, index) {
                      return HomeVerticalTile(
                        title: subsType[index][0],
                        money: subsType[index][1],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
