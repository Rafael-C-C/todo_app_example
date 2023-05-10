import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/features/login/screens/login_screen.dart';
import 'package:todo_app_tus_test/features/profile/widgets/Text/daily_text.dart';
import 'package:todo_app_tus_test/features/profile/widgets/appBar/profile_appbar.dart';
import 'package:todo_app_tus_test/features/profile/widgets/Text/row_text_indicators.dart';
import 'package:todo_app_tus_test/features/profile/widgets/buttons/row_buttons.dart';
import 'package:todo_app_tus_test/features/profile/widgets/list_of_activities/activities_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          ProfileAppBar(height: height, width: width),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const RowTextIndicator(),
                  const DailyText(),
                  ActivitiesProfileLIst(height: height, width: width),
                  ButtonsRows(
                    tittle1: 'LogOut P',
                    tittle2: 'LogOut B',
                    tittle3: 'LogOut C',
                    press1: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                    },
                    press2: () {
                      print('2');
                    },
                    press3: () {
                      print('3');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
