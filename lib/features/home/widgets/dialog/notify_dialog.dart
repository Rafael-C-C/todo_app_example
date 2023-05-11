import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_tus_test/core/resources/app_resources.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class NotifyDialog extends StatelessWidget {
  final Function()? press;
  const NotifyDialog({
    super.key,
    required this.width,
    this.press,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      child: SizedBox(
          height: height * 0.50,
          width: width * 0.75,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: width * 0.50,
                          child: const ResizeableText(
                            text: 'Notificaciones',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          AppResources.cancelIcon,
                          height: 20,
                          width: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("Hola"))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
