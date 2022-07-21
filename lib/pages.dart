import 'package:get/get.dart';

import 'screens/screens.dart';

final pages = <GetPage>[
  GetPage(name: '/intro', page: () => const IntroScreen()),
  GetPage(name: '/home', page: () => const HomeScreen()),
];
