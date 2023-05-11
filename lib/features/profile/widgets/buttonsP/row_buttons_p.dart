import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/buttonP/reusable_elevated_buttonP.dart';

class RowButtonP extends StatelessWidget {
  final String title1, title2, title3;
  final void Function()? press1, press2, press3;
  final double horizontal , vertical;

  const RowButtonP(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      this.press1,
      this.press2,
      this.press3,  required this.horizontal, required this.vertical});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ReusableElevatedButtonP(
          title: title1,
          function: press1,
          styledButton: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(
                horizontal: horizontal, vertical: vertical),
          ),
        ),
        ReusableElevatedButtonP(
          title: title2,
          function: press2,
          styledButton: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
        ReusableElevatedButtonP(
          title: title3,
          function: press3,
          styledButton: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ],
    );
  }
}
