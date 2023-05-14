import 'package:brandbuilder_flutter/components/brand_builder_logo.dart';
import 'package:brandbuilder_flutter/components/brand_builder_plans.dart';
import 'package:brandbuilder_flutter/pages/subscribed_page.dart';
import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
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
      "Work with editorial and marketing teams to drive SEO in content creation and content programming";
  String service4 =
      "Recommend changes to website architecture, content, linking and other factors to improve SEO positions for target keywords";
  String service5 =
      "Work with editorial and marketing teams to drive SEO in content creation and content programming";
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
                            image: AssetImage("assets/images/Vector.png"))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //logo page present in components
                BrandBuilderLogo(),
                const SizedBox(height: 13),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Brand Builder",
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
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                  height: 26,
                ),
                // this component in in component folder
                Container(
                  // width: double.infinity,
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BrandBuilderPlans(
                          planId: "01",
                          planName: "SILVER",
                          planPrice: "150.00/year"),
                      const SizedBox(
                        width: 15,
                      ),
                      BrandBuilderPlans(
                          planId: "02",
                          planName: "GOLD",
                          planPrice: "125.00/year"),
                      const SizedBox(
                        width: 15,
                      ),
                      BrandBuilderPlans(
                          planId: "03",
                          planName: "PLATINUM",
                          planPrice: "200.00/year"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Our service as CEO Expert",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        BulletedList(
                          // bullet: Icon(Icons.check,color:Colors.red),
                          listItems: [
                            Text(
                              service1,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              service2,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              service3,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              service4,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              service5,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],

                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                          bulletColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
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
                                        color:
                                            Color.fromARGB(137, 133, 128, 128),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                            motion: BehindMotion(),
                                            children: const [
                                              // A SlidableAction can have an icon and/or a label.
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
                                    Container(
                                      width: 400,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(137, 133, 128, 128),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                            motion: BehindMotion(),
                                            children: const [
                                              // A SlidableAction can have an icon and/or a label.
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
                                        ElevatedButton(
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Subscribed())),
                                          child: Text(
                                            "Pay now",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              // backgroundColor: Colors.lightBlue,
                                              disabledBackgroundColor:
                                                  Colors.blue),
                                        ),
                                        ElevatedButton(
                                          onPressed: null,
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              // backgroundColor: Colors.lightBlue,
                                              disabledBackgroundColor:
                                                  Colors.blue),
                                        )
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
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.lightBlue,
                          disabledBackgroundColor: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
