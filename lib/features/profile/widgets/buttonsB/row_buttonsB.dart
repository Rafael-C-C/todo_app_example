import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/buttonsB/reusable_button_b.dart';
import 'package:todo_app_tus_test/features/login/screens/login_screenB.dart';

class ReusableRowButtonBryan extends StatelessWidget {
  final String title1;
  final void Function()? press1;
  const ReusableRowButtonBryan({
    super.key,
    required this.title1,
    this.press1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusabelButton(
            title: 'Hola',
            press: () {
              print(1);
            },
          ),
          ReusabelButton(
            title: 'Bienvenido',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginScreen2()));
            },
          ),
          ReusabelButton(
            title: 'Adios',
            press: () {
              print(2);
            },
          ),
        ],
      ),
    );
  }
}
