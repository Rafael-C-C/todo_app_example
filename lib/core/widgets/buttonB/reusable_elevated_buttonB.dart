import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final ButtonStyle? styledButton;
  final void Function()? press;
  const ReusableElevatedButton(
      {super.key,
      required this.title,
      this.press,
      this.style,
      this.styledButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 100,
      child: ElevatedButton(
          style: styledButton,
          onPressed: press,
          child: Text(
            title,
            style: style,
          )),
    );
  }
}
