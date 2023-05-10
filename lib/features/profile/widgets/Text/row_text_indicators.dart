import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/features/profile/widgets/Text/reusable_colum_text.dart';

class RowTextIndicator extends StatelessWidget {
  const RowTextIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableColumText(
              width: width,
              tittle: '76',
              description: 'Actividades completadas'),
          ReusableColumText(
              width: width, tittle: '20', description: 'Actividades restantes'),
          ReusableColumText(
              width: width,
              tittle: '90%',
              description: 'Porcentaje de cumplimiento'),
        ],
      ),
    );
  }
}
