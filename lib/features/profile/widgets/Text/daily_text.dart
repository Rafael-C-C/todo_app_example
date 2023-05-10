import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class DailyText extends StatelessWidget {
  const DailyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        children: const [
          ResizeableText(
            text: 'Motivación del día',
            alignment: Alignment.topLeft,
            presetFontSizes: [16, 14, 12, 11, 10],
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          ResizeableText(
            text:
                'Lorem ipsum dolor sit amet consectetur adipiscing elit cum, himenaeos eros sapien congue pellentesque fames ac dignissim lacinia, nunc porttitor mus ridiculus tristique in neque. Vitae interdum metus parturient sem aliquam egestas auctor, pulvinar lacus felis dui luctus a fusce, semper accumsan gravida faucibus sapien vel. Aliquet rhoncus cubilia eros pulvinar est mi quisque, proin in egestas tristique integer cursus interdum rutrum, dapibus penatibus tempus suspendisse erat parturient.',
            alignment: Alignment.topLeft,
            presetFontSizes: [14, 12, 11, 10],
            maxLines: 8,
          ),
        ],
      ),
    );
  }
}
