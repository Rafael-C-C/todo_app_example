import 'package:flutter/material.dart';

class ExampleButton extends StatelessWidget {
  final void Function()? press;
  final String tittle;
  const ExampleButton({
    super.key,
    required this.press,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: press, child: Text(tittle));
  }
}
