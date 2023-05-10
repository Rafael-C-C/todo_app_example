import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/resources/themes/styles.dart';
import 'package:todo_app_tus_test/core/widgets/activities_list/activities_list_view.dart';

class ListOfActivities extends StatelessWidget {
  const ListOfActivities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Actividades del domingo 02 de marzo:",
            style: subtitleStyle,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ActivitiesListView(height: height * 0.50, width: width * 0.9),
      ],
    );
  }
}
