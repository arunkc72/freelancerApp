import 'package:brandbuilder_flutter/pages/company_page.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
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
      body: Container(
        height: double.maxFinite,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/darkThemeBackground.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          )),
                      icon: Icon(Icons.arrow_back, color: Colors.white)),
                  Expanded(
                    child: Text(
                      'Company',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyPage(),
                          ));
                    },
                    child: Container(
                      height: 115,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/brandbuilderLogoBig.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brand Builder',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('IT Company',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_half),
                          SizedBox(
                            width: 7,
                          ),
                          Text('4.6'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('Total Jobs: 2000+')
                    ],
                  ),
                  Expanded(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.bookmark_add_outlined),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Our development team and the client discuss about the problem domain or any idea and collects information to make the requirements clear for both parties. We use Fig Jam and Miro for interactive and informative requirement analysis. After requirement gathering, our team allocates tools and resources for software development process. Afterwards, we schedule the time needed for the software development',
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey[600],
                height: 150,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Service As Subscription',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: false,
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
    );
  }
}
