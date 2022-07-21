import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '/theme/theme.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Colors.white,
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: SmoothBorderRadius(
          cornerRadius: 12,
          cornerSmoothing: 1,
        ),
      ),
      child: Row(children: [
        Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color(0xfff6b310), blurRadius: 52, spreadRadius: 1.5),
          ]),
          child: SvgPicture.asset(
            'assets/icons/flash.svg',
            color: const Color(0xfff6b310),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Learn Everything,',
                  style: textStyle,
                ),
                Row(
                  children: [
                    const Text(
                      'Without ',
                      style: textStyle,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 8,
                          child: Container(
                            height: 8,
                            width: 56,
                            color: Get.context!.theme
                                .extension<CourslyColor>()!
                                .accentColor,
                          ),
                        ),
                        const Text(
                          'Limits ',
                          style: textStyle,
                        )
                      ],
                    ),
                    Text(
                      '!',
                      style: textStyle.copyWith(fontStyle: FontStyle.italic),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SvgPicture.asset('assets/icons/arrow-circle-right.svg'),
      ]),
    );
  }
}
