// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class SEOText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextRendererStyle? textRendererStyle;

  const SEOText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.textRendererStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign);
  }
}
