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
  final _selectedBgColor = Color.fromRGBO(255, 255, 255, 0.14);
  final _unselectedBgColor = Colors.black;
  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;
  Widget _buttomIcon(Widget icon, int index) {
    return icon;
  }

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
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: _buttomIcon(
                  Image.asset(
                    'assets/images/home.png',
                    height: 40,
                    width: 40,
                  ),
                  0),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: _buttomIcon(
                  Image.asset(
                    'assets/images/freelancer.png',
                    height: 40,
                    width: 40,
                  ),
                  1),
              label: 'FreeLancer'),
          BottomNavigationBarItem(
              icon: _buttomIcon(
                  Image.asset('assets/images/company.png',
                      height: 40, width: 40),
                  2),
              label: 'Company'),
          BottomNavigationBarItem(
              icon: _buttomIcon(
                  Image.asset('assets/images/History.png',
                      height: 40, width: 40),
                  3),
              label: 'History'),
          BottomNavigationBarItem(
              icon: _buttomIcon(
                  Image.asset('assets/images/profile.png',
                      height: 40, width: 40),
                  4),
              label: 'Profile'),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
      ),
    );
  }
}
