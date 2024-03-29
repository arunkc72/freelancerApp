import 'package:brandbuilder_flutter/components/default_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/searchbar.dart';
import '../Model/employee_model.dart';

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
      Consumer<EmployeeModel>(builder: (context, value, child) {
        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 50,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              Employee e = EmployeeModel().employees[0];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
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
                                  ? 'assets/images/freelancerprofile.png'
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_half,
                                        size: 7,
                                        color: Color(0xfffffd54),
                                      ),
                                      Text(
                                        e.rating.toString(),
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Text(
                          e.position,
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
            });
      })
    ]);
  }
}
