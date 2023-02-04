import 'package:flutter/material.dart';

class CountEventDate extends StatelessWidget {
  const CountEventDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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