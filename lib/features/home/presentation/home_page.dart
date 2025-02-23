// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/features/home/presentation/hero_image.dart';
import 'package:wportfolio/features/home/presentation/hero_widget.dart';
import 'package:wportfolio/widgets/background_blur.dart';
//  import FILES
import '../../../widgets/appbar/my_app_bar.dart';
// PARTS
// PROVIDERS
// -------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Title'),),
      body: Stack(
        children: <Widget>[
          const BackgroundBlur(),
          HeroWidget(),
          const MyAppBar(),
        ],
      ),
    );
  }
}
