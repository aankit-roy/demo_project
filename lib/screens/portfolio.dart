import 'package:demo_project/screens/achievement_tab.dart';
import 'package:demo_project/screens/project_tab.dart';
import 'package:demo_project/screens/saved_tab.dart';
import 'package:demo_project/screens/shared_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const TabBarView(
          children: [
            ProjectTab(),
            SavedTab(),
            SharedTab(),
            AchievementTab(),
          ],
        ),
        floatingActionButton: floatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 6,
      title: Text('Portfolio', style: TextStyle(fontSize: 20.sp)),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/shop.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/bell.svg"),
          onPressed: () {},
        ),
      ],
      bottom: TabBar(
        indicatorColor: AppColors.primaryColor,
        tabs: const [
          Tab(text: 'Project'),
          Tab(text: 'Saved'),
          Tab(text: 'Shared'),
          Tab(text: 'Achievement'),
        ],
      ),
    );
  }

  Widget floatingActionButton() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16.h,
      ), // Adding top and bottom margins
      child: SizedBox(
        height: 34.h,
        child: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(
            Icons.filter_list,
            size: 20.w,
            color: AppColors.whiteColor,
          ),
          label: Text('Filter',
              style: TextStyle(fontSize: 16.sp, color: AppColors.whiteColor)),
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(40.r), // Adjust to make it fully rounded
          ),
        ),
      ),
    );
  }
}
