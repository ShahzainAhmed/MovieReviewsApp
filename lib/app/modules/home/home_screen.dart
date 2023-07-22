import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pluton_test_mvc/app/data/constants/app_assets.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';
import 'package:pluton_test_mvc/app/data/constants/app_typography.dart';
import 'package:pluton_test_mvc/app/modules/home/components/movies_horizontal_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Watch', style: AppTypography.kBold16),
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.kMain),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Watch Movies",
                style: AppTypography.kMedium14.copyWith(
                  color: AppColors.kWhiteColor,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 250.h,
              child: const MovieTiles(),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
