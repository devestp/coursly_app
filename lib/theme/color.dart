import 'package:flutter/material.dart';

class CourslyColor extends ThemeExtension<CourslyColor>{
  final bgColor = const Color(0xffffffff);
  final accentColor = const Color(0xff6664FF);

  const CourslyColor();

  @override
  ThemeExtension<CourslyColor> copyWith() {
    // not implemented
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CourslyColor> lerp(ThemeExtension<CourslyColor>? other, double t) {
    // not implemented
    throw UnimplementedError();
  }

}