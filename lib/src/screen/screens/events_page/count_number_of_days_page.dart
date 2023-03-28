import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/widgets/appbar_custom.dart';

class CountEventDatePage extends StatelessWidget {
  const CountEventDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context: context, title: "Hello"),
      body: SafeArea(
        child: Column(
          children: [
            const Text("Ngày quen nhau: 01/01/2022"),
            Text(
                "Số ngày quen nhau: ${countNumberOfdays(DateTime.utc(2022, 1, 1))}"),
          ],
        ),
      ),
    );
  }
}

int countNumberOfdays(DateTime date) {
  return DateTime.now().difference(date).inDays;
}
