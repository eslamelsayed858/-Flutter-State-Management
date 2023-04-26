import 'package:flutter/material.dart';

/// Seate Management StatefulWidget

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int conunter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stat manegment",
        ),
      ),

      /// Declarative programming
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  conunter--;
                });
              },
              icon: const Icon(
                Icons.remove,
                size: 50,
              ),
            ),
            Text(
              "$conunter",
              style: const TextStyle(fontSize: 33),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  conunter++;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
