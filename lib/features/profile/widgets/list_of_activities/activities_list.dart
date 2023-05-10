import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/activities_list/activities_list_view.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class ActivitiesProfileLIst extends StatelessWidget {
  const ActivitiesProfileLIst({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
      child: Column(
        children: [
          const ResizeableText(
            text: 'Actividades de hoy, domingo 02 de marzo:',
            alignment: Alignment.centerLeft,
            textAlign: TextAlign.left,
            maxLines: 2,
            presetFontSizes: [14, 12, 11, 10],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          ActivitiesListView(height: height * 0.32, width: width * 0.9),
        ],
      ),
    );
  }
}
