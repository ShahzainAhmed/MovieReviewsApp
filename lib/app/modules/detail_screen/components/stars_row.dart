import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';

class MyStarsRow extends StatelessWidget {
  const MyStarsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: AppColors.kYellowColor, size: 18.sp),
        Icon(Icons.star, color: AppColors.kYellowColor, size: 18.sp),
        Icon(Icons.star, color: AppColors.kYellowColor, size: 18.sp),
        Icon(Icons.star, color: AppColors.kYellowColor, size: 18.sp),
        Icon(Icons.star_outline, color: AppColors.kYellowColor, size: 18.sp),
      ],
    );
  }
}
