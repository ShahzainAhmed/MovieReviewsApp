import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';
import 'package:pluton_test_mvc/app/data/constants/app_typography.dart';
import 'package:pluton_test_mvc/app/modules/detail_screen/widgets/cast_circles.dart';
import 'package:pluton_test_mvc/app/modules/detail_screen/widgets/primary_button.dart';
import 'package:pluton_test_mvc/app/modules/detail_screen/widgets/stars_row.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var movieData = Get.arguments;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: Get.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(movieData['Images'][2]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  height: Get.height * 0.67,
                  color: Colors.transparent.withOpacity(0.4),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 180.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Hero(
                      tag: movieData['Title'],
                      child: Container(
                        height: 160.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.kBlackColor.withOpacity(0.5),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                          image: DecorationImage(
                            image: NetworkImage(movieData['Images'][1]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    SizedBox(
                      width: 140.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60.h),
                          SlideInRight(
                            duration: const Duration(milliseconds: 500),
                            child: Text(
                              movieData['Title'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.kMedium16,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SlideInRight(
                            duration: const Duration(milliseconds: 650),
                            child: Container(
                              width: 40.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.kGreyColor),
                              ),
                              child: Center(
                                child: Text(
                                  movieData['imdbRating'],
                                  style: AppTypography.kMedium12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          SlideInRight(
                            duration: const Duration(milliseconds: 750),
                            child: MyStarsRow(),
                          ),
                          SizedBox(height: 5.h),
                          SlideInRight(
                            duration: const Duration(milliseconds: 850),
                            child: Text(movieData['Year']),
                          ),
                          SizedBox(height: 5.h),
                          SlideInRight(
                            duration: const Duration(milliseconds: 950),
                            child: Text(movieData['Runtime']),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                SlideInRight(
                  duration: const Duration(milliseconds: 600),
                  child: Text(
                    "Directed by ${movieData['Director']}",
                    style: AppTypography.kMedium12,
                  ),
                ),
                SizedBox(height: 20.h),
                SlideInLeft(
                    duration: const Duration(milliseconds: 600),
                    child: Text("The Cast", style: AppTypography.kMedium14)),
                SizedBox(height: 10.h),
                SlideInRight(
                  duration: const Duration(milliseconds: 800),
                  child: const CastCircles(),
                ),
                SizedBox(height: 20.h),
                SlideInLeft(
                  duration: const Duration(milliseconds: 600),
                  child: Text("Storyline", style: AppTypography.kMedium14),
                ),
                SizedBox(height: 10.h),
                SlideInRight(
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    movieData['Plot'],
                    style: AppTypography.kMedium12,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BounceInDown(
        delay: const Duration(milliseconds: 300),
        child: const PrimaryButton(),
      ),
    );
  }
}
