import 'package:flutter/material.dart';

class ReusableElevatedButtonC extends StatelessWidget {
  final String title;
  final ButtonStyle? styleButton;
  final void Function()? press;
  const ReusableElevatedButtonC({
    super.key,
    required this.title,
    this.styleButton,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Function,
      child: Text(title),
    );
  }
}
