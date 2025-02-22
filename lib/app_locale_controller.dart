// -------------
//  import LIBRARIES
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class AppLocaleController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() {
    return 'en';
  }

  void changeLocale(String newLocale) {
    update((state) => newLocale);
  }
}
