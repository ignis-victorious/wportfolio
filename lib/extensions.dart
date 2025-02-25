// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//  import FILES
import 'app_text_styles.dart';
import 'style/app_size.dart';

// PARTS
// PROVIDERS
// -------------

enum FormFactorType { mobile, tablet, desktop }

extension StyledContext on BuildContext {
  //  ---- Retrieves screen sizes: Height and width ----
  //  this is the key to all this page
  MediaQueryData get mq => MediaQuery.of(this);

  double get width => mq.size.width;
  double get height => mq.size.height;

  //  Decides which FormFactor to return
  ThemeData get theme => Theme.of(this);

  FormFactorType get formFactor {
    if (width < 600) {
      return FormFactorType.mobile;
    } else if (width < 900) {
      return FormFactorType.tablet;
    } else {
      return FormFactorType.desktop;
    }
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isTablet => formFactor == FormFactorType.tablet;
  bool get isDesktop => formFactor == FormFactorType.desktop;
  bool get isDesktopOrTablet => isTablet || isDesktop;

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyles();
    }
  }

  AppInsets get insets {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallInsets();
      case FormFactorType.tablet:
      case FormFactorType.desktop:
        return LargeInsets();
    }
  }

  //  Localisation - Return 'en' if nothing is found
  AppLocalizations get texts =>
      AppLocalizations.of(this) ?? lookupAppLocalizations(Locale('en'));

  //  Returns the app's main theme-colorScheme
  ColorScheme get colorScheme => theme.colorScheme;
}
