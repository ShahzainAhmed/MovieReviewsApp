import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pluton_test_mvc/app/data/constants/app_themes.dart';
import 'package:pluton_test_mvc/app/modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            overscroll: false,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Themes.primaryTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
