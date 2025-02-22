// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'app_colors.dart';
import 'app_size.dart';
// PARTS
// PROVIDERS
// -------------

class AppTheme {
  final String fontFamily;

  AppTheme({required this.fontFamily});

  ThemeData get dark {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        background: AppColors.darkBackgroundColor,
        surface: AppColors.gray[850]!,
        outline: AppColors.gray[800]!,
        outlineVariant: AppColors.gray[700]!,
        onBackground: AppColors.gray[100]!,
        onSurface: AppColors.gray[300]!,
        onSurfaceVariant: AppColors.gray[400]!,
        tertiary: AppColors.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      elevatedButtonTextStyle: _darkElvatedButtonTextStyle,
      outlinedButtonTextStyle: _darkOutlinedButtonTextStyle,
      appBarTheme: AppBarTheme(color: AppColors.gray[900]!.withOpacity(0.3)),
    );
  }

  ThemeData get light {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        background: AppColors.gray[100]!,
        surface: AppColors.gray[200]!,
        outline: AppColors.gray[300]!,
        outlineVariant: AppColors.gray[400]!,
        onBackground: AppColors.gray[800]!,
        onSurface: AppColors.gray[700]!,
        onSurfaceVariant: AppColors.gray[600]!,
        tertiary: AppColors.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColors.gray[100]!,
      elevatedButtonTextStyle: _darkElvatedButtonTextStyle,
      outlinedButtonTextStyle: _darkOutlinedButtonTextStyle,
      appBarTheme: AppBarTheme(color: AppColors.gray[100]!.withOpacity(0.3)),
    );
  }

  ThemeData _getThemeData({
    required ColorScheme colorScheme,
    required WidgetStateProperty<TextStyle> elevatedButtonTextStyle,
    required WidgetStateProperty<TextStyle> outlinedButtonTextStyle,
    required Color scaffoldBackgroundColor,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: elevatedButtonTextStyle,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlineButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: outlinedButtonTextStyle,
        ),
      ),
    );
  }

  final _primaryButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return const Color(0xff561895).withOpacity(0.7);
    }
    return AppColors.primaryColor;
  });
  final _outlineButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: const Color(0xff561895).withOpacity(0.7));
    }
    return const BorderSide(color: Color(0xff561895));
  });

  WidgetStatePropertyAll<TextStyle> get _darkElvatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );
  WidgetStatePropertyAll<TextStyle> get _lightElvatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      ); // TextStyle // WidgetStatePropertyAll
  WidgetStatePropertyAll<TextStyle> get _darkOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );
  WidgetStatePropertyAll<TextStyle> get _lightOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(color: AppColors.gray[800], fontFamily: fontFamily),
      );
}

// class AppTheme {
//   static ThemeData get dark => ThemeData(
//     colorScheme: ColorScheme.dark(
//   primary: AppColors.primaryColor,
//   surface: AppColors.darkBackgroundColor,
//   onSurface: AppColors.gray[100]!,
// ),
//     useMaterial3: true,
//     scaffoldBackgroundColor: AppColors.darkBackgroundColor,
//     appBarTheme: AppBarTheme(color: AppColors.gray[900]),
//   ); // ThemeData
// }
