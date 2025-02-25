// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';

// PARTS
// PROVIDERS
// -------------

class StyledCard extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius borderRadius;
  final Widget child;
  final bool borderEffect;

  const StyledCard({
    super.key,
    this.width,
    this.height,
    this.padding,
    required this.borderRadius,
    required this.child,
    this.borderEffect = false,
  });

  @override
  _StyledCardState createState() => _StyledCardState();
}

class _StyledCardState extends State<StyledCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: widget.padding ?? EdgeInsets.all(context.insets.cardPadding),
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.outline),
        color: context.colorScheme.surface,
        borderRadius:
            widget.borderRadius ?? const BorderRadius.all(Radius.circular(24)),
      ),
      child: widget.child,
    );
  }
}
