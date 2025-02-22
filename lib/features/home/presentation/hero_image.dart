// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class HeroImage extends StatelessWidget {
  const HeroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(250)),
        child: Image.asset('assets/images/me.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
