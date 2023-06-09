import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_tus_test/core/resources/themes/styles.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class HorizontalBanner extends StatelessWidget {
  const HorizontalBanner({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFF176BFC),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        alignment: Alignment.centerLeft,
        height: height * 0.25,
        width: width * 0.90,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: const ResizeableText(
                    style: titleCardStyle,
                    maxLines: 2,
                    text: 'Marzo/02/2023',
                    presetFontSizes: [13, 12, 11, 10],
                  )),
              const SizedBox(
                height: 10,
              ),
              const ResizeableText(
                style: titleCardStyle,
                maxLines: 2,
                alignment: Alignment.centerLeft,
                text: '6 de 10 tareas completadas',
                presetFontSizes: [16, 14, 12, 10],
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: -15,
        right: 10,
        child: SvgPicture.asset(
          "assets/images/thinking-girl.svg",
          height: 110,
          width: 110,
        ),
      )
    ]);
  }
}
