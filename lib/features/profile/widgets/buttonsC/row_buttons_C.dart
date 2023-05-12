import 'package:flutter/material.dart';

import '../../../../core/widgets/ButoonsC/reusable_elevated_button_C.dart';



class ButtonsRow extends StatelessWidget {
  final String title1;
  const ButtonsRow({
    super.key,
    required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ReusableElevatedButtonC(
          title: title1,
          styleButton: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
