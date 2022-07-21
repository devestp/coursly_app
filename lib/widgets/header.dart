import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28,
          child: Image.asset('assets/images/avatar.png'),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Saleh',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Text(
              'Hey, Ready for next lesson?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset('assets/icons/notification.svg')
      ],
    );
  }
}
