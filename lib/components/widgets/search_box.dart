import 'package:demo_project/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade300, width: 1.5)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search a Project',
          hintStyle: const TextStyle(
            color: Colors.grey, // Change this to your desired hint text color
          ),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor),
                child: const Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                )),
          ),
        ),
      ),
    );
  }
}
