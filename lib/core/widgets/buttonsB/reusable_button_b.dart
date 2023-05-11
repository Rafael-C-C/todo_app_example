import 'package:flutter/material.dart';

class ReusabelButton extends StatelessWidget {
  final String title;
  final Function()? press;
  const ReusabelButton({
    super.key,
    required this.title,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 110,
      child: ElevatedButton(
        onPressed: press,
        child: Text(title),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
