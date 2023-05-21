import 'package:brandbuilder_flutter/authn/login_page.dart';
import 'package:brandbuilder_flutter/authn/signup.dart';
import 'package:brandbuilder_flutter/onBoardingScreens/onBoardingController.dart';
import 'package:brandbuilder_flutter/onBoardingScreens/onBoardingMain.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'start_page.dart';
import './utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.darktheme,
      initialRoute: '/home',
      routes: {'/home': (context) => const OnBoardingController()},
    );
  }
}
