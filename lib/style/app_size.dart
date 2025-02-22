// -------------
//  import LIBRARIES
//  import FILES

// PARTS
// PROVIDERS
// -------------

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
}

class Insets {
  static double get xs => 4;
  static double get sm => 8;
  static double get med => 12;
  static double get lg => 18;
  static double get xl => 24;
  static double get xxl => 42;
  static double get xxxl => 80;

  static const double maxWidth = 1280;
}

class LargeInsets extends AppInsets {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 64;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;
}
