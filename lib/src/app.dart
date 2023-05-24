import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/config/routes.dart';
import 'package:thousands_sunny/src/screen/home_page.dart';
import 'package:thousands_sunny/src/style/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLightTheme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
      home: const HomePage(),
      onGenerateRoute: generateRoute,
    );
  }
}
