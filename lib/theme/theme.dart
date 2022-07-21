import 'package:flutter/material.dart';

import 'color.dart';

export 'color.dart';

final theme = ThemeData(
  fontFamily: 'Poppins',
  extensions: const <ThemeExtension>[
    CourslyColor(),
  ],
);
