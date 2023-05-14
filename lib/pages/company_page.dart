import 'package:brandbuilder_flutter/components/brand_builder_logo.dart';
import 'package:brandbuilder_flutter/components/brand_builder_plans.dart';
import 'package:brandbuilder_flutter/components/custom_button.dart';
import 'package:flutter/material.dart';
//import 'package:bulleted_list/bulleted_list.dart';
import 'package:brandbuilder_flutter/start_page.dart';
import 'package:brandbuilder_flutter/components/constant.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  String service1 = "Develop and implement link building strategy";
  String service2 =
      "Work with the development team to ensure SEO best practices are properly implemented on newly developed code";
  String service3 =
      "\u2022 Work with editorial and marketing teams to drive SEO in content creation and content programming";
  String service4 =
      "Recommend changes to website architecture, content, linking and other factors to improve SEO positions for target keywords";
  String service5 =
      "Work with editorial and marketing teams to drive SEO in content creation and content programming";

  List brandBuilderplanList = [
    [01, 'Silver', '150.00'],
    [01, 'Gold', '170.00'],
    [01, 'Platinium', '200.00'],
  ];
  int selectedPlanIndex = 0;
  planSelect(int index) {
    setState(() {
      selectedPlanIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/darkThemeBackground.png"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 38),
                  IconButton(
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 24),
                  ),

                  // GestureDetector(
                  //   onTap: () => Navigator.pop(context),
                  //   child: Container(
                  //     height: 20,
                  //     width: 20,
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage("assets/images/Vector.png"))),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 28,
                  ),
                  //logo page present in components
                  BrandBuilderLogo(),
                  const SizedBox(height: 13),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Brand Builder",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Text(
                          "IT Company",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 41,
                        ),
                        Text(
                          "CHOOSE A PLAN",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // this component in in component folder
                  SizedBox(
                      width: double.infinity,
                      height: 154,
                      // child: ListView.builder(
                      //     scrollDirection: Axis.horizontal,
                      //     shrinkWrap: true,
                      //     physics: ScrollPhysics(),
                      //     itemCount: plansList.length,
                      //     itemBuilder: (context, index) {
                      //       return BrandBuilderPlans(
                      //           planId: plansList[index]['id'],
                      //           planName: plansList[index]['name'],
                      //           planPrice: plansList[index]['planList']);
                      //     }),

                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: brandBuilderplanList.length,
                          itemBuilder: (context, index) {
                            return BrandBuilderPlans(
                              planId: brandBuilderplanList[index][0],
                              planName: brandBuilderplanList[index][1],
                              planPrice: brandBuilderplanList[index][2],
                              isSelected: (selectedPlanIndex == index),
                              onTap: () {
                                planSelect(index);
                              },
                            );
                          })),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Our service as CEO Expert",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  SizedBox(
                    height: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\u2022  $service1',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '\u2022  $service2',
                          textAlign: TextAlign.justify,
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          service3,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '\u2022 $service4',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '\u2022  $service5',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 100,
                  //   width: double.infinity,
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.vertical,
                  //     child: Column(
                  //       children: [
                  //         BulletedList(
                  //           // bullet: Icon(Icons.check,color:Colors.red),
                  //           listItems: [
                  //             Text(
                  //               service1,
                  //               style: TextStyle(color: Colors.white),
                  //             ),
                  //             Text(
                  //               service2,
                  //               style: TextStyle(color: Colors.white),
                  //             ),
                  //             Text(
                  //               service3,
                  //               style: TextStyle(color: Colors.white),
                  //             ),
                  //             Text(
                  //               service4,
                  //               style: TextStyle(color: Colors.white),
                  //             ),
                  //             Text(
                  //               service5,
                  //               style: TextStyle(color: Colors.white),
                  //             ),
                  //           ],

                  //           style: TextStyle(
                  //               fontSize: 10, fontWeight: FontWeight.w500),
                  //           bulletColor: Colors.white,
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Container(
                                  height: 250,
                                  width: double.infinity,
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Choose Payment",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600)),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      //for esewa choosin option
                                      Container(
                                        width: 400,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              137, 133, 128, 128),
                                          borderRadius:
                                              BorderRadius.circular(13),
                                        ),
                                        child: Slidable(
                                          endActionPane: ActionPane(
                                              motion: StretchMotion(),
                                              children: [
                                                SlidableAction(
                                                  onPressed: null,
                                                  backgroundColor:
                                                      Color(0xFFFE4A49),
                                                  foregroundColor: Colors.white,
                                                  icon: Icons.delete,
                                                  label: 'Delete',
                                                ),
                                              ]),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/esewa.png"))),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(children: [
                                                Text(
                                                  "Esewa",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text("12313-193293-981")
                                              ])
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      //for khalti choosing option
                                      Slidable(
                                        endActionPane: ActionPane(
                                          motion: StretchMotion(),
                                          children: [
                                            SlidableAction(
                                              onPressed: null,
                                              backgroundColor:
                                                  Color(0xFFFE4A49),
                                              foregroundColor: Colors.white,
                                              icon: Icons.delete,
                                              label: 'Delcasda',
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          width: 400,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                137, 133, 128, 128),
                                            borderRadius:
                                                BorderRadius.circular(13),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/khalti.png"),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(children: [
                                                Text(
                                                  "Khalti",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text("12313-193293-981")
                                              ])
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      //buttons of payments
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomButton(
                                            height: 30,
                                            width: 142,
                                            child: Text(
                                              "Pay Now",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          CustomButton(
                                            height: 30,
                                            width: 142,
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 38,
                          width: 211,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff65F4CD),
                                  Color(0xff5A5BF3),
                                ],
                              )),
                          child: Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
