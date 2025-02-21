// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'app_colors.dart';
// PARTS
// PROVIDERS
// -------------

class AppTheme {
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(
  primary: AppColors.primaryColor,
  surface: AppColors.darkBackgroundColor,
  onSurface: AppColors.gray[100]!,
), 
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(color: AppColors.gray[900]),
  ); // ThemeData
}
