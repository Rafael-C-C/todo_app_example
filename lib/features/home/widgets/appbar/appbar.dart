import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/resources/themes/styles.dart';
import 'package:todo_app_tus_test/features/home/widgets/dialog/notify_dialog.dart';
import 'package:todo_app_tus_test/features/profile/screens/profile_escreen.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Bienvenido, practicante.",
              style: titlteAppbarStyle,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                    },
                    icon: const Icon(Icons.person_2_outlined)),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext dialogContext) {
                          return NotifyDialog(
                            width: width,
                            height: height,
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.notifications))
              ],
            )
          ],
        ),
      ),
    );
  }
}
