import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '/models/models.dart';
import '/theme/theme.dart';

class WeeklyLeaderBoard extends StatelessWidget {
  final _leaderboard = const <LeaderBoardItem>[
    LeaderBoardItem(
      name: 'Saleh Hosseini',
      profession: 'Product designer',
      avatar: 'assets/images/avatar.png',
      isPro: true,
      xp: 1912,
    ),
    LeaderBoardItem(
      name: 'Marzie Nadali',
      profession: 'Product designer',
      avatar: 'assets/images/avatar-2.png',
      isPro: true,
      xp: 1850,
    ),
    LeaderBoardItem(
      name: 'Amir Rayan',
      profession: 'Product designer',
      avatar: 'assets/images/avatar-3.png',
      isPro: true,
      xp: 1720,
    ),
  ];

  const WeeklyLeaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5),
        borderRadius: SmoothBorderRadius(
          cornerRadius: 12,
          cornerSmoothing: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Weekly Leader',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/more.svg')
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          ..._buildLeaderBoard(),
        ],
      ),
    );
  }

  List<Widget> _buildLeaderBoard() {
    final result = <Widget>[];

    for (int i = 0; i < _leaderboard.length; i++) {
      result.add(
        _buildLeaderBoardTile(_leaderboard[i]),
      );

      if (i != _leaderboard.length - 1) {
        result.addAll([
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 1,
                color: const Color.fromRGBO(0, 0, 0, 0.05),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ]);
      }
    }

    return result;
  }

  Widget _buildLeaderBoardTile(LeaderBoardItem leaderBoard) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          child: Image.asset(leaderBoard.avatar),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  leaderBoard.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  width: 4,
                  height: 4,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                ),
                const SizedBox(
                  width: 4,
                ),
                if (leaderBoard.isPro)
                  Text(
                    'pro',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Get.context!.theme
                          .extension<CourslyColor>()!
                          .accentColor,
                    ),
                  ),
              ],
            ),
            Text(
              leaderBoard.profession,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            )
          ],
        ),
        const Spacer(),
        Text(
          "${leaderBoard.xp}px",
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}