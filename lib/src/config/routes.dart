import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/config/route_path.dart';
import 'package:thousands_sunny/src/resources/home_page.dart';
import 'package:thousands_sunny/src/resources/screens/personal_page/personal_page.dart';
import 'package:thousands_sunny/src/widgets/not_found_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.home:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutePath.personal:
      return MaterialPageRoute(builder: (context) => const PersonalPage());
    default:
      return MaterialPageRoute(builder: (context) => const NotFoundPage());
  }
}
