// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//  import FILES
// import 'package:wportfolio/providers.dart';
// import 'package:wportfolio/style/app_theme.dart';
import 'home_page.dart';
import 'style/app_theme.dart';
import 'shared/app_theme_controller.dart';
import 'shared/app_locale_controller.dart';
// PARTS
// PROVIDERS
// -------------

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> locale = ref.watch(appLocaleControllerProvider);
    final theme = ref.watch(appThemeControllerProvider);

    return MaterialApp(
      title: 'Flutter web - portfolio exercise',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme(fontFamily: _fontFamily(locale.value)).dark,
      theme: AppTheme(fontFamily: _fontFamily(locale.value)).light,

      // darkTheme: AppTheme.dark,
      themeMode: theme.value,
      // themeMode: ThemeMode.dark,
      supportedLocales: [
        Locale('en'), // English
        Locale('it'), // Italian
      ],
      locale: Locale(locale.value ?? 'en'),
      home: const HomePage(),

      // locale: const Locale('en'),
      // theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),),
    );
  }

  String _fontFamily(String? locale) {
    return (locale ?? 'en') == 'en' ? 'Poppins' : 'Raleway';
  }
}


// -------------
//  import LIBRARIES
//  import FILES

// PARTS
// PROVIDERS
// -------------