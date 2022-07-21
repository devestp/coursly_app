import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '/theme/theme.dart';

class HotCoursesHeader extends StatelessWidget {
  const HotCoursesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Hot Courses',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Text(
          'View All',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: context.theme.extension<CourslyColor>()!.accentColor,
          ),
        ),
        SvgPicture.asset('assets/icons/arrow-right.svg'),
      ],
    );
  }
}
