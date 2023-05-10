import 'package:flutter/material.dart';

import 'package:todo_app_tus_test/features/home/widgets/banner/horizontal_banner.dart';
import 'package:todo_app_tus_test/features/home/widgets/banner/vertical_banner.dart';

class ProgressBanner extends StatelessWidget {
  const ProgressBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    return Column(
      children: [
        if (isVertical(context)) VerticalalBanner(height: height, width: width),
        if (isHorizontal(context))
          HorizontalBanner(height: height, width: width),
      ],
    );
  }
}
