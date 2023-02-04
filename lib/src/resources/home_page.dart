import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/resources/screens/count_number_of_days_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CountEventDate(),
    );
  }
}
