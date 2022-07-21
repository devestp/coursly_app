import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/models/models.dart';
import '/theme/color.dart';
import '/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final _course = const Course(
    cover: 'assets/images/course.png',
    title: 'UI Design Foundation',
    type: 'Career Path',
    lessonsCount: 85,
    totalHours: 40,
    difficulty: Difficulty.medium,
    isPro: true,
  );

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.extension<CourslyColor>()!.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Header(),
            const SizedBox(
              height: 28,
            ),
            const PremiumCard(),
            const SizedBox(
              height: 24,
            ),
            const WeeklyLeaderBoard(),
            const SizedBox(
              height: 24,
            ),
            const HotCoursesHeader(),
            const SizedBox(
              height: 16,
            ),
            CourseCard(course: _course),
            const SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}
