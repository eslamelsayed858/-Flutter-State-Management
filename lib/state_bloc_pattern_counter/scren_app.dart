import 'package:flutter/material.dart';

class ScrenApp extends StatelessWidget {
  const ScrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("block"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const Text("0"),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
