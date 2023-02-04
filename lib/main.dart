import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thousands_sunny/firebase_options.dart';
import 'package:thousands_sunny/src/app.dart';

void main() async {
  await Firebase.initializeApp(
    name: "thousands_sunny",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
