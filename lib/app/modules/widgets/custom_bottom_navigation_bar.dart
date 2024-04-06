import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';
import 'package:pluton_test_mvc/app/modules/home/home_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      Custom_BottomNavigationBarState();
}

class Custom_BottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(), // index 0
    const HomeScreen(), // index 1
    const HomeScreen(), // index 2
    const HomeScreen(), // index 3
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: BottomNavigationBar(
          iconSize: 30,
          // selectedIconTheme: const IconThemeData(color: Colors.amber),
          selectedItemColor: AppColors.kRedColor,
          // unselectedItemColor: const Color(0xff8c8f99),
          unselectedItemColor: AppColors.kWhiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: AppColors.kBackgroundColor,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded),
              label: "Explore",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_back),
              label: "Stats",
              // backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Cart",
              //  backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Cart",
              //  backgroundColor: Colors.transparent,
            ),
          ],
          showSelectedLabels: false, // for the text with icons
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
