// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lightwork/utils/styles/color_style.dart';
import 'package:lightwork/view/home_screen/home_screen.dart';

class TabScreenBody extends StatefulWidget {
  const TabScreenBody({super.key});

  @override
  State<TabScreenBody> createState() => _TabScreenBodyState();
}

class _TabScreenBodyState extends State<TabScreenBody> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        unselectedItemColor: highlightColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/dashboard.svg",
              color: _selectedIndex == 0 ? appColor : highlightColor,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/job.svg",
              color: _selectedIndex == 1 ? appColor : highlightColor,
            ),
            label: 'Job Market',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/add.svg",
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/calendar.svg",
              color: _selectedIndex == 3 ? appColor : highlightColor,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/message.svg",
              color: _selectedIndex == 4 ? appColor : highlightColor,
            ),
            label: 'Messages',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
