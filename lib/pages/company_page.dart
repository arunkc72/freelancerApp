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
  bool isAdded = false; // for adding button

  void setFunction() {
    setState(() {
      isPressed = !isPressed;
      //setState(() {});
    });
  }

  void addPayment() {
    setState(() {
      isAdded != isAdded;
      showAddSnackBar(context);
    });
  }

  bool isHover = false;

  // used in choose payment snackbar

  bool isPressed = false;
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
    [02, 'Gold', '170.00'],
    [03, 'Platinium', '200.00'],
  ];
  int selectedPlanIndex = 0;
  planSelect(int index) {
    setState(() {
      selectedPlanIndex = index;
    });
  }

  void showAddSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Container(
        height: 300,
        color: Colors.transparent,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add  Card",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(
              height: 24,
            ),
            Wrap(
              //runSpacing: 24,
              children: [
                InkWell(
                  onDoubleTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: Container(
                    width: 149,
                    height: 47,
                    //color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/image 17.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: (isHover) ? Colors.grey.shade400 : null,
                  width: 158,
                  height: 71,
                  child: Image.asset('assets/images/image 18.png'),
                ),
                Container(
                  width: 84,
                  height: 84,
                  child: Image.asset('assets/images/image 19.png'),
                ),
                SizedBox(
                  width: 35,
                ),
                Container(
                  width: 153,
                  height: 46,
                  child: Image.asset('assets/images/image 20.png'),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                GestureDetector(
                  onTap: () =>
                      ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                  child: CustomButton(
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
                ),
              ],
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(minutes: 5),
      content: Stack(
        children: [
          Container(
              height: 300,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Choose Payment",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      IconButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        onPressed: () => setFunction(),
                        constraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40),
                        icon: (isPressed)
                            ? Center(
                                child: Icon(
                                  Icons.keyboard_arrow_up,
                                  //size: 12,
                                  color: Colors.black,
                                ),
                              )
                            : Icon(Icons.keyboard_arrow_down,
                                //size: 12,
                                color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //building payment methods list
                  SizedBox(
                    height: 150,
                    child: (paymentList.isNotEmpty)
                        ? ListView.separated(
                            //for space between items
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 15,
                              );
                            },
                            scrollDirection: Axis.vertical,
                            itemCount: paymentList.length,
                            itemBuilder: (context, index) {
                              return Slidable(
                                endActionPane: ActionPane(
                                    extentRatio: 0.15,
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: (context) {
                                          paymentList
                                              .remove(paymentList[index]);
                                          setState(() {});
                                        },
                                        backgroundColor: Color(0xFFFE4A49),
                                        foregroundColor: Colors.white,
                                        icon: Icons.delete,
                                        label: 'Delete',
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                        padding: EdgeInsets.only(left: -10),
                                      ),
                                    ]),
                                child: Container(
                                  width: 338,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC4C4C4),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    paymentList[index]
                                                        ['image']))),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(children: [
                                        Text(
                                          paymentList[index]['name'],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text("12313-193293-981")
                                      ])
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        : (isAdded == true)
                            ? Center(
                                child: Text(
                                " payment method available",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                            : Center(
                                child: Text(
                                  "No payment method available",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //buttons of payments
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      GestureDetector(
                        onTap: () =>
                            ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                        child: CustomButton(
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
                      ),
                    ],
                  )
                ],
              )),
          // this is add payment method  button
          if (isPressed)
            Positioned(
              top: 20,
              right: 0,
              child: InkWell(
                onTap: () {
                  addPayment();
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: CustomButton(
                    height: 30, width: 86, child: Text('Add card')),
              ),
            ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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

                  SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          showSnackBar(context);
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
