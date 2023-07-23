import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test_mvc/app/data/constants/app_assets.dart';

class CastCircles extends StatelessWidget {
  const CastCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast1),
        ),
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast2),
        ),
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast3),
        ),
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast4),
        ),
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast5),
        ),
        CircleAvatar(
          radius: 21.r,
          foregroundImage: AssetImage(AppAssets.kCast6),
        ),
      ],
    );
  }
}
