import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/screen/screens/events_page/add_event_page.dart';
import 'package:thousands_sunny/src/widgets/appbar_custom.dart';
import 'package:thousands_sunny/src/widgets/drawer_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarCustom(context: context, title: "Events"),
        drawer: const DrawerCustom(),
        body: const AddEventPage(),
      ),
    );
  }
}
