// -------------
//  import LIBRARIES
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import 'package:wportfolio/widgets/styled_card.dart';

// PARTS
// PROVIDERS
// -------------

const expLen = 6;
const expPointsSize = 16.0;
const expScaleFactor = 150.0;
const expPointsFactor = expHeight / 2 - expPointsSize / 2;

class ExperiencesBody extends StatelessWidget {
  const ExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopExperiencesBody();
  }
}

class DesktopExperiencesBody extends StatelessWidget {
  const DesktopExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: expLen * expScaleFactor, //150,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 3,
              height: expLen * expScaleFactor + expScaleFactor, //150, // 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary.withOpacity(0),
                    context.colorScheme.primary,
                    context.colorScheme.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          for (int i = 0; i < expLen; i++) ...[
            if (i.isEven)
              Positioned(
                top: i * 150,
                right: 400,
                left: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ExperienceItem(),
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ), // DottedLine
                    ),
                  ],
                ),
              )
            else
              Positioned(
                top: i * 150,
                left: 400,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ), // DottedLine
                    ),
                    ExperienceItem(),
                  ],
                ),
              ),
            Positioned(
              top: i * expScaleFactor + expPointsFactor,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                width: expPointsSize,
                height: expPointsSize,
                decoration: BoxDecoration(
                  color: context.colorScheme.onBackground.withOpacity(0.25),
                  shape: BoxShape.circle,
                ), // BoxDecoration
                child: Container(
                  width: expPointsSize / 2,
                  height: expPointsSize / 2,
                  decoration: BoxDecoration(
                    color: context.colorScheme.onBackground.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ), // BoxDecoration
                ), // Container
              ), // Container
            ),
          ],
        ],
      ),
    );
  }
}

const expWidth = 300.0;
const expHeight = 230.0;

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: expWidth,
      height: expHeight,
      borderRadius: BorderRadius.all(Radius.zero),
      child: Column(
        children: [
          Text(
            'Experience Title',
            style: context.textStyle.bodyLgBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                _ExperinceDescriptionItem(),
                _ExperinceDescriptionItem(),
                _ExperinceDescriptionItem(),
                _ExperinceDescriptionItem(),
                _ExperinceDescriptionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperinceDescriptionItem extends StatelessWidget {
  const _ExperinceDescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorScheme.onBackground,
          ), // BoxDecoration
        ), // Container
        const Gap(6),
        Expanded(
          child: Text(
            'Description item',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ); // Row
  }
}
