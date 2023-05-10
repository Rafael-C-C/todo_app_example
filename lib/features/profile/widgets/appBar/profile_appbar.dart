import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_tus_test/core/resources/app_resources.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;
    return Stack(
      children: [
        Container(
          color: const Color(0xFF176BFC),
          height: height * 0.20,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (isHorizontal(context))
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: SvgPicture.asset(
                                AppResources.backArrowIcon,
                                // ignore: deprecated_member_use
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const UserNameWidget()
                        ],
                      ),
                  ],
                ),
                const CircleAvatar(
                  radius: 65,
                  backgroundImage:
                      AssetImage('assets/pictures/generic-man.jpg'),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                AppResources.backArrowIcon,
                // ignore: deprecated_member_use
                color: Colors.white,
              )),
        ),
        if (isVertical(context))
          const Positioned(left: 10, bottom: 10, child: UserNameWidget()),
      ],
    );
  }
}

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResizeableText(
      text: 'Juan Carlos Canto Uc',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      maxLines: 3,
      presetFontSizes: [20, 16, 14, 12, 10],
    );
  }
}
