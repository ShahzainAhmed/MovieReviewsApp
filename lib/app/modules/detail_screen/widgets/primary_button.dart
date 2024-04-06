import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';
import 'package:pluton_test_mvc/app/data/constants/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: Bounce(
        child: Container(
          height: 40.h,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.kRedColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              "Resume playing",
              style:
                  AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
