import 'package:brandbuilder_flutter/pages/company_page.dart';
import 'package:brandbuilder_flutter/pages/freelancer_page.dart';
import 'package:brandbuilder_flutter/pages/history_page.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
import 'package:brandbuilder_flutter/pages/profile_page.dart';
import 'package:flutter/material.dart';
class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selectedIndex = 0;
  static const TextStyle mystyle = TextStyle(fontSize: 40);
  static const List pages = [
    HomePage(),
    FreelancerPage(),
    CompanyPage(),
    HistoryPage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined), label: 'Free Lancer'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Company'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}