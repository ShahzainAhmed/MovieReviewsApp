import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';

class MyStarsRow extends StatelessWidget {
  final double maxRating = 5.0; // Maximum rating value
  final double minRating = 0.0; // Minimum rating value

  @override
  Widget build(BuildContext context) {
    int filledStars =
        (Random().nextInt(5) + 1); // Random number between 1 and 5
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star,
            color:
                i < filledStars ? AppColors.kYellowColor : AppColors.kGreyColor,
            size: 18.sp,
          ),
      ],
    );
  }
}
