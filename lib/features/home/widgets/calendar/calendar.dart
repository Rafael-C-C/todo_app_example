import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/features/home/widgets/calendar/horizontal_calendar.dart';
import 'package:todo_app_tus_test/features/home/widgets/calendar/vertical_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({
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
        if (isVertical(context)) VerticalCalendar(height: height, width: width),
        if (isHorizontal(context))
          HorizontalalCalendar(height: height, width: width),
      ],
    );
  }
}
