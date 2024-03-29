import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/config/route_path.dart';
import 'package:thousands_sunny/src/utils/color_extension.dart';

PreferredSizeWidget appBarCustom(
    {required BuildContext context, required String title}) {
  final ColorExtension myColors =
      Theme.of(context).extension<ColorExtension>()!;
  return AppBar(
    centerTitle: true,
    elevation: 2.0,
    primary: true,
    scrolledUnderElevation: 2.0,
    titleTextStyle: const TextStyle(
      // color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: myColors.appBar,
    title: Text(title),
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () {
          if (Scaffold.of(context).hasDrawer) {
            Scaffold.of(context).openDrawer();
          }
        },
        icon: const Icon(Icons.menu_open),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutePath.personal);
        },
        icon: const Icon(Icons.person),
      ),
    ],
  );
}
