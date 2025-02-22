// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class AppSharedPref {
  static const localeKey = 'app_locale';
  static const themeKey = 'app_themee';

  //  LOCALE
  static Future<void> setAppLocale(String locale) async {
    final sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString(localeKey, locale);
  }

  static Future<String> getAppLocale() async {
    final sharedPref = await SharedPreferences.getInstance();

    return sharedPref.getString(localeKey) ?? 'en';
  }

  //  THEME - dark/light
  static Future<void> setAppTheme(String theme) async {
    final sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString(themeKey, theme);
  }

  static Future<ThemeMode> getAppTheme() async {
    final sharedPref = await SharedPreferences.getInstance();

    return sharedPref.getString(themeKey) == 'light'
        ? ThemeMode.light
        : ThemeMode.dark;
  }
}
