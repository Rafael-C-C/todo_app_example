import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class ReusableColumText extends StatelessWidget {
  final String tittle;
  final String description;
  const ReusableColumText({
    super.key,
    required this.width,
    required this.tittle,
    required this.description,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.22,
      child: Column(
        children: [
          ResizeableText(
              text: tittle,
              maxLines: 3,
              presetFontSizes: const [16, 14, 12, 10],
              style: const TextStyle(fontWeight: FontWeight.bold)),
          ResizeableText(
            text: description,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(color: Colors.grey.shade700),
            presetFontSizes: const [14, 12, 10],
          )
        ],
      ),
    );
  }
}
