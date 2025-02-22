// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/extensions.dart';

import '../style/app_colors.dart';
import 'seo_text.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class PrimaryButton extends StatelessWidget {
  final String title;

  const PrimaryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.gray[100],
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String title;

  const OutlineButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SEOText(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onBackground,
        ), // TextStyle
      ),
    ); // SEOText // OutlinedButton
  }
}
