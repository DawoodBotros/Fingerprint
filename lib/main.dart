import 'package:fingerprint/finger_print.dart';
import 'package:fingerprint/fingerprint_hom.dart';
import 'package:fingerprint/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FingerprintHome(),
    );
  }
}

