import 'package:demo_project/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child:   MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(


            colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
            fontFamily: 'Roboto', // Set the default font
            useMaterial3: true,
          ),
          home: const RootScreen()
      ),
    );
  }
}




