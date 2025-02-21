// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'widgets/appbar/my_app_bar.dart';
// PARTS
// PROVIDERS
// -------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Title'),),
      body: MyAppBar(),
    );
  }
}
