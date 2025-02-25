// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/extensions.dart';
import 'package:wportfolio/widgets/appbar/app_scaffold.dart';

import 'course_item.dart';
//  import FILES
// PARTS
// PROVIDERS
// -------------

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(context.insets.padding),
          sliver: SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  context.mq.size.width ~/ 300 >= 3
                      ? 3
                      : context.mq.size.width ~/ 300,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return CourseItem();
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
