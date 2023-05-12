import 'package:flutter/material.dart';

class ReusableElevatedButtonP extends StatelessWidget {
    final void Function()? function;
    final String title;
    final ButtonStyle? styledButton;

  const ReusableElevatedButtonP({super.key,  required this.title, this.styledButton, this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: styledButton,
      child: Text(title),
    );
  }
}
