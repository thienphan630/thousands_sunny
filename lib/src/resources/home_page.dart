import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/resources/screens/count_number_of_days_page.dart';
import 'package:thousands_sunny/src/widgets/drawer_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CountEventDatePage(),
        drawer: DrawerCustom(),
      ),
    );
  }
}
