import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/utils/color_extension.dart';

import 'styles_index.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  extensions: const <ThemeExtension<dynamic>>[lightColorTheme],
);
final darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  extensions: const <ThemeExtension<dynamic>>[darkColorTheme],
);
