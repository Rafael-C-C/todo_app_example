import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app_tus_test/core/resources/themes/styles.dart';
import 'package:todo_app_tus_test/core/widgets/lists.dart';
import 'package:todo_app_tus_test/features/home/widgets/calendar/cards/day_card.dart';

class HorizontalalCalendar extends StatelessWidget {
  const HorizontalalCalendar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Fechas agendadas:",
            style: subtitleStyle,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: height * 0.25,
          width: width * 0.90,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: weekdays.length,
              itemBuilder: (BuildContext context, int index) {
                String weekdayName = weekdayNames[weekdays[index].weekday - 1];
                String formattedDate = DateFormat('dd').format(weekdays[index]);
                return DayCard(
                  day: weekdayName,
                  number: formattedDate,
                );
              }),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
