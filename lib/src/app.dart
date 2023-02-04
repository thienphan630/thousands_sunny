import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/resources/home_page.dart';
import 'package:thousands_sunny/src/resources/login_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
