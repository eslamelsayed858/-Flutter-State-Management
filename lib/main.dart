import 'package:flutter/material.dart';
import 'state_bl_pattern_counter/scren_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrenApp(),
    );
  }
}
