import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final ButtonStyle? styledButton;
  final void Function()? press;
  final double? height;
  final double? width;
  const ReusableElevatedButton(
      {super.key,
      required this.title,
      this.press,
      this.style,
      this.styledButton,
      this.height = 60,
      this.width = 100});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
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
