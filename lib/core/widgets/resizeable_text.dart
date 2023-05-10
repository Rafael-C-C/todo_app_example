import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResizeableText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextStyle? style;
  final AlignmentGeometry? alignment;
  final TextAlign? textAlign;
  final List<double>? presetFontSizes;
  const ResizeableText({
    super.key,
    required this.text,
    this.presetFontSizes,
    this.alignment,
    this.maxLines = 2,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: AutoSizeText(
        text,
        style: style,
        maxLines: maxLines,
        presetFontSizes: presetFontSizes,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
