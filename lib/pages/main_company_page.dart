import 'package:brandbuilder_flutter/pages/company_page.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
import 'package:brandbuilder_flutter/pages/ui_uxpage.dart';
import 'package:brandbuilder_flutter/start_page.dart';
import 'package:flutter/material.dart';

import '../utils/homepage_verticalTile.dart';

class MainCompanyPage extends StatefulWidget {
  const MainCompanyPage({super.key});

  @override
  State<MainCompanyPage> createState() => _MainCompanyPageState();
}

class _MainCompanyPageState extends State<MainCompanyPage> {
  final List subsType = [
    ['Server Name', 10.00],
    ['Shopify Website', 20.00],
    ['Hosting', 99.00],
    ['Random Name', 50.00],
  ];
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              // vertical: 0,
              horizontal: 24.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 38),
                  Row(
                    children: [
                      IconButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.zero,
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartPage(),
                              )),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20,
                          )),
                      Expanded(
                        child: Text(
                          'Companies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompanyPage(),
                              ));
                        },
                        onDoubleTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompanyPage()));
                        },
                        child: Container(
                          height: 119,
                          width: 119,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            'assets/images/brandbuilderLogoBig.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 29,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brand Builder',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Text('IT Company',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.5),
                              )),
                          SizedBox(
                            height: 11,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_half, color: Colors.amber),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '4.6',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Total Jobs: 2000+',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400))
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.bookmark_add_outlined),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Our development team and the client discuss about the problem domain or any idea and collects information to make the requirements clear for both parties. We use Fig Jam and Miro for interactive and informative requirement analysis. After requirement gathering, our team allocates tools and resources for software development process. Afterwards, we schedule the time needed for the software development',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Services',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Wrap(
                    spacing: 18.0,
                    runSpacing: 13.0,
                    children: [
                      servicesContainer(content: 'SEO'),
                      servicesContainer(content: 'Digital Marketing'),
                      servicesContainer(content: 'Business Planning'),
                      servicesContainer(content: 'Photo Editior'),
                      servicesContainer(content: 'Graphics Design'),
                      servicesContainer(content: 'UI/UX Design'),
                      servicesContainer(content: 'Video Editing'),
                      servicesContainer(content: 'Mobile & Web Development'),
                      servicesContainer(
                          content: 'Point of sale(online/offline)'),
                      servicesContainer(content: 'Ordering System'),
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    'Service As Subscription',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.only(top: 1),
                      itemCount: subsType.length,
                      itemBuilder: (context, index) {
                        return HomeVerticalTile(
                          title: subsType[index][0],
                          money: subsType[index][1],
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class servicesContainer extends StatelessWidget {
  final String content;

  const servicesContainer({super.key, required this.content});

  // const servicesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UiUXPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        height: 22,
        decoration: BoxDecoration(
            color: Color.fromRGBO(150, 150, 150, 0.25),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
