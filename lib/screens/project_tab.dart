import 'package:demo_project/components/widgets/search_box.dart';
import 'package:demo_project/model/project_model.dart';
import 'package:demo_project/riverpod/project_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

            Consumer(
              builder: (context, ref, child) {
                final projectList = ref.watch(projectProvider);
                return listCardData(projectList);
              },
            ),
          ],
        ),
      ),
    );
  }

  ListView listCardData(List<ProjectModel> projectList) {
    return ListView.builder(
            itemCount: projectList.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final project = projectList[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          project.image,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project.title,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5.h,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 2),
                                            child: Text(
                                              project.subtitle,
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Text(
                                            project.sublabel,
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){

                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 30.h,

                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.h, horizontal: 12.w),
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(4.r),
                                              gradient: LinearGradient(
                                                begin: Alignment.bottomRight,
                                                end: Alignment.topLeft,
                                                colors: [
                                                  Colors.yellow.withOpacity(
                                                      0.9), // Starting color (more white)
                                                  Colors
                                                      .orange, // Original orange color
                                                ],
                                              )),
                                          child: Center(
                                            child: Text(
                                              project.grade,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              );
            },
          );
  }
}


