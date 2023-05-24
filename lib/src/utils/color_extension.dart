import 'package:flutter/material.dart';

const lightColorTheme = ColorExtension(
  primary: Color(0xFF000000),
  onPrimary: Color(0xFF000000),
  secondary: Color(0xFF000000),
  onSecondary: Color(0xFF000000),
  background: Color(0xFF7E827D),
  text: Color(0xFF000000),
  appBar: Color(0xFF48319D),
);

const darkColorTheme = ColorExtension(
  primary: Color(0xFF000000),
  onPrimary: Color(0xFF000000),
  secondary: Color(0xFF000000),
  onSecondary: Color(0xFF000000),
  background: Color(0xFF7E827D),
  text: Color(0xFF000000),
  appBar: Color(0xFF48319D),
);

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.text,
    required this.appBar,
  });
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color background;
  final Color text;
  final Color appBar;

  @override
  ThemeExtension<ColorExtension> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
