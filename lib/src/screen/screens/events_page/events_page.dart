import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:thousands_sunny/src/config/route_path.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _addEventTap(context);
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF).withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Center(
                  child: Text(
                "+",
                style: TextStyle(color: Colors.black, fontSize: 16),
              )),
            ),
            const SizedBox(height: 4),
            const Text(
              "Thêm sự kiện",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

void _addEventTap(BuildContext context) {
  log("add events");
  Navigator.pushNamed(context, RoutePath.addEvents);
}
