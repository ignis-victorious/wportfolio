
// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------



class SEOText extends StatelessWidget {
  final String text;
  final TextStyle? style;

const SEOText(this.text,{ super.key,  this.style });

  @override
  Widget build(BuildContext context){
    return  Text(text)
    ;
  }
}