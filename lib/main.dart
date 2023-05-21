import 'package:brandbuilder_flutter/Model/employee_model.dart';
import 'package:brandbuilder_flutter/onBoardingScreens/onBoardingController.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './utils/app_theme.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => EmployeeModel(), child: const MyApp()));
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
