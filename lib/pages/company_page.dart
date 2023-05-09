import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/DarkThemeBackground1-01 3.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent.withOpacity(0.2),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("hello there"), Text("hello there")],
        ),
      ),
    );
  }
}
