import 'package:brandbuilder_flutter/components/searchbar.dart';
import 'package:flutter/material.dart';

class UiUXPage extends StatefulWidget {
  const UiUXPage({super.key});

  @override
  State<UiUXPage> createState() => _UiUXPageState();
}

class _UiUXPageState extends State<UiUXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38,
              ),
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.white, size: 20)),
              SizedBox(
                height: 17,
              ),
              SearchBar(),
            ],
          ),
        ),
      )),
    );
  }
}
