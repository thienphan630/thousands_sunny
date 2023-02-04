import 'package:flutter/material.dart';

class CountEventDate extends StatelessWidget {
  const CountEventDate({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Ngày quen nhau: 01/01/2022"),
            Text(
                "Số ngày quen nhau: ${count_numberOfdays(DateTime.utc(2022, 1, 1))}"),
          ],
        ),
      ),
    );
  }
}

int count_numberOfdays(DateTime date) {
  return DateTime.now().difference(date).inDays;
}