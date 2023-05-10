import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/features/home/widgets/appbar/appbar.dart';
import 'package:todo_app_tus_test/features/home/widgets/banner/banner.dart';
import 'package:todo_app_tus_test/features/home/widgets/calendar/calendar.dart';
import 'package:todo_app_tus_test/features/home/widgets/activities_list/list_of_activities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: const [
              Appbar(),
              ProgressBanner(),
              Calendar(),
              ListOfActivities()
            ],
          ),
        ),
      )),
    );
  }
}
