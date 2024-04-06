import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pluton_test_mvc/app/data/constants/app_colors.dart';

class Themes {
  static ThemeData primaryTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      titleSpacing: 0,
      color: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: AppColors.kBackgroundColor,
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   backgroundColor: AppColors.kBackgroundColor,
    //   selectedItemColor: AppColors.kPrimaryColor,
    //   unselectedItemColor: AppColors.kGreyColor,
    // ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemStatusBarContrastEnforced: true,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);
