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
    ['Web Designer'],
    ['App Developer'],
    ['Business Planning'],
    ['Digital Marketing'],
    ['Project Manager'],
    ['Web Developer'],
    ['Marketing Manager'],
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

  int selectedJobIndex = 0;
  jobSelect(int index) {
    setState(() {
      selectedJobIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        // height: double.maxFinite,
        // width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/darkThemeBackground.png"),
          fit: BoxFit.fill,
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Zeal Heal',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Companies',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                margin: EdgeInsets.only(left: 24),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(width: 24),
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
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FreeLancer',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'MORE',
                      style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 22,
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
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Container(
                  height: 160,
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
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Service As Subscription',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    // padding: EdgeInsets.only(top: 2),
                    itemCount: subsType.length,
                    itemBuilder: (context, index) {
                      return HomeVerticalTile(
                        title: subsType[index][0],
                        money: subsType[index][1],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
