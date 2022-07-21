import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/models/models.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.5),
        borderRadius: SmoothBorderRadius(
          cornerRadius: 12,
          cornerSmoothing: 1,
        ),
      ),
      child: Stack(
        children: [
          if (course.isPro)
            Positioned(
              top: 0,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xffFAB819),
                  borderRadius: SmoothBorderRadius.only(
                    bottomLeft: SmoothRadius(
                      cornerRadius: 10,
                      cornerSmoothing: 1,
                    ),
                    bottomRight: SmoothRadius(
                      cornerRadius: 10,
                      cornerSmoothing: 1,
                    ),
                  ),
                ),
                child: const Text(
                  'Pro',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset(course.cover),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        course.type,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff8C8C8C),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: SmoothBorderRadius.only(
                    bottomLeft: SmoothRadius(
                      cornerRadius: 10,
                      cornerSmoothing: 1,
                    ),
                    bottomRight: SmoothRadius(
                      cornerRadius: 10,
                      cornerSmoothing: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMeta('${course.lessonsCount} Lesson',
                        'assets/icons/document-text.svg'),
                    _buildMeta(
                        '${course.totalHours} Hours', 'assets/icons/clock.svg'),
                    _buildMeta(
                        course.difficulty.name, 'assets/icons/chart-2.svg'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMeta(String title, String icon) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
