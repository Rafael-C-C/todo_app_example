import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/buttonB/reusable_elevated_buttonB.dart';

class ButtonsRows extends StatelessWidget {
  final String tittle1;
  final String tittle2;
  final String tittle3;
  final void Function()? press1;
  final void Function()? press2;
  final void Function()? press3;

  const ButtonsRows(
      {super.key,
      required this.tittle1,
      required this.tittle2,
      required this.tittle3,
      this.press1,
      this.press2,
      this.press3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableElevatedButton(
            title: tittle1,
            press: press1,
            styledButton: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          ReusableElevatedButton(
            title: tittle2,
            press: press2,
            styledButton: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          ReusableElevatedButton(
            title: tittle3,
            press: press3,
            styledButton: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ],
      ),
    );
  }
}
