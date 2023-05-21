import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchWebDeveloper extends StatelessWidget {
  const SearchWebDeveloper({super.key});

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
        ),
      ),
    );
  }
}
