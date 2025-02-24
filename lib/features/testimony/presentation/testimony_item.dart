// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';

//  import FILES
import '../../../widgets/styled_card.dart';

// PARTS
// PROVIDERS
// -------------

class TestimonyItem extends StatelessWidget {
  const TestimonyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage: Image.network('src').image,
                ), // CircleAvatar
              ), // SizedBox
              const Gap(16),
              Expanded(
                child: Text(
                  'Testimony Name',
                  style: context.textStyle.bodyLgBold.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ), // Text
              ), // Expanded
            ], // Row
          ),
        ],
      ), // Column
    );
  }
}
