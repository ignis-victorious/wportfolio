// -------------
//  import LIBRARIES
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wportfolio/shared/app_shared_pref.dart';
//  import FILES

// PARTS
part 'app_locale_controller.g.dart';
// PROVIDERS

@riverpod
class AppLocaleController extends _$AppLocaleController {
  @override
  FutureOr<String> build() {
    return AppSharedPref.getAppLocale();
  }

  void changeLocale(String newLocale) async {
    await AppSharedPref.setAppLocale(newLocale);
    update((state) => newLocale);
  }
}

// class AppLocaleController extends AsyncNotifier<String> {
//   @override
//   FutureOr<String> build() {
//     return AppSharedPref.getAppLocale();
//     // return 'en';
//   }

  // void changeLocale(String newLocale) async {
  //   await AppSharedPref.setAppLocale(newLocale);
  //   update((state) => newLocale);
  // }
// }

// -------------
