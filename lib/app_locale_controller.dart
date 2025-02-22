// -------------
//  import LIBRARIES
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wportfolio/shared/app_shared_pref.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class AppLocaleController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() {
    return AppSharedPref.getAppLocale();
    // return 'en';
  }

  void changeLocale(String newLocale) async {
    await AppSharedPref.setAppLocale(newLocale);
    update((state) => newLocale);
  }
}
