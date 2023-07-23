import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';
import 'package:pluton_test_mvc/app/data/constants/app_typography.dart';
import 'package:pluton_test_mvc/app/data/services/api_service.dart';
import 'package:pluton_test_mvc/app/modules/detail_screen/detail_screen.dart';

class MovieTiles extends StatefulWidget {
  const MovieTiles({super.key});

  @override
  State<MovieTiles> createState() => MovieTilesState();
}

class MovieTilesState extends State<MovieTiles> {
  @override
  void initState() {
    // to call the API directly without pressing any button
    super.initState();
    fetchAPI();
  }

  List<dynamic> movies = [];

  void fetchAPI() async {
    // created seperate class for APIs so we can use it in other screens as well
    List<dynamic> jsonData = await ApiService().fetchMovies();
    setState(() {
      movies = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      separatorBuilder: (context, index) => SizedBox(width: 20.w),
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(const DetailScreen(), arguments: movies[index]),
          child: SizedBox(
            width: 130.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(movies[index]['Images'][1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  movies[index]['Title'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.kMedium12.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
                Text(
                  movies[index]['Year'],
                  style: AppTypography.kMedium10.copyWith(
                    color: AppColors.kGreyColor,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
