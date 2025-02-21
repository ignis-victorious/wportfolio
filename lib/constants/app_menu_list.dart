// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import '../routes/app_routes.dart';
import '../extensions.dart';

// PARTS
// PROVIDERS
// -------------

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: Routes.home),
      AppMenu(title: context.texts.courses, path: Routes.courses),
      AppMenu(title: context.texts.blog, path: Routes.blog),
      AppMenu(title: context.texts.about, path: Routes.about),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
