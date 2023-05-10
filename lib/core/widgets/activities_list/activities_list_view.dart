import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class ActivitiesListView extends StatelessWidget {
  const ActivitiesListView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                width: 50,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Do it.svg",
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ResizeableText(
                              text: 'Salir a correr con boby',
                              maxLines: 2,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              presetFontSizes: [14, 12, 11, 10]),
                          SizedBox(
                            height: 5,
                          ),
                          ResizeableText(
                              text: '07:00 AM - 10:00 AM',
                              maxLines: 2,
                              presetFontSizes: [14, 12, 11, 10]),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
