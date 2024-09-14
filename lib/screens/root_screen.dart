import 'package:demo_project/constants/app_color.dart';
import 'package:demo_project/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:demo_project/screens/home_screen.dart';
import 'package:demo_project/screens/input_screen.dart';
import 'package:demo_project/screens/portfolio.dart';
import 'package:demo_project/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 1;
  // List of pages for the bottom navigation
  final List<Widget> _pages = [
    const HomeScreen(),
    const PortfolioScreen(),
    const InputScreen(),
    const ProfileScreen()
  ];

  // Method to handle navigation bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: _pages[_selectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       type: BottomNavigationBarType.fixed,
  //       currentIndex: _selectedIndex,
  //       selectedItemColor: AppColors.primaryColor, // Selected icon and label color
  //       unselectedItemColor: Colors.grey,          // Unselected icon and label color
  //       onTap: _onItemTapped,
  //
  //       // BottomNavigationBar items
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset(
  //             'assets/icons/Home.svg',
  //
  //           ),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset(
  //             'assets/icons/Portfolio.svg',
  //
  //           ),
  //           label: 'Portfolio',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset(
  //             'assets/icons/Input.svg',
  //
  //           ),
  //           label: 'Input',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: SvgPicture.asset(
  //             'assets/icons/Profile.svg',
  //
  //           ),
  //           label: 'Profile',
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: bottomNavBar(),

    );
  }

  Widget bottomNavBar() {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor:
              AppColors.primaryColor, // Color for selected items
          unselectedItemColor: Colors.grey, // Color for unselected items
          onTap: _onItemTapped,

          // Define styles for selected and unselected icons and labels
          selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedLabelStyle: TextStyle(color: AppColors.primaryColor),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),

          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Home.svg',
                color: _selectedIndex == 0
                    ? AppColors.primaryColor
                    : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Portfolio.svg',
                color: _selectedIndex == 1
                    ? AppColors.primaryColor
                    : Colors.grey,
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Input.svg',
                color: _selectedIndex == 2
                    ? AppColors.primaryColor
                    : Colors.grey,
              ),
              label: 'Input',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Profile.svg',
                color: _selectedIndex == 3
                    ? AppColors.primaryColor
                    : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
