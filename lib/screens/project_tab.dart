
import 'package:demo_project/components/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProjectTab extends StatelessWidget {
  const ProjectTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            // Search bar
            const SearchBox(),
            // ListView.builder
            ListView.builder(
              itemCount: 5, // Replace this with actual data count
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.w),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.network(
                          'https://via.placeholder.com/100', // Replace with actual image
                          width: 80.w,
                          height: 80.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'Kemampuan Merangkum Tulisan',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BAHASA SUNDA',
                            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                          ),
                          Text(
                            'Oleh Al-Baiqi Samaan',
                            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          'A',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

