import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/config/route_path.dart';
import 'package:thousands_sunny/src/screen/home_page.dart';
import 'package:thousands_sunny/src/screen/screens/events_page/add_event_page.dart';
import 'package:thousands_sunny/src/screen/screens/events_page/events_page.dart';
import 'package:thousands_sunny/src/screen/screens/personal_page/personal_page.dart';
import 'package:thousands_sunny/src/widgets/not_found_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.home:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutePath.personal:
      return MaterialPageRoute(builder: (context) => const PersonalPage());

    //Events
    case RoutePath.events:
      return MaterialPageRoute(builder: ((context) => const EventsPage()));
    case RoutePath.addEvents:
      return MaterialPageRoute(builder: ((context) => const AddEventPage()));

    default:
      return MaterialPageRoute(builder: (context) => const NotFoundPage());
  }
}
