import 'package:flutter/material.dart';

/// Seate Management StatefulBuilder
class Home extends StatelessWidget {
  // int conunter = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Stat manegment",
            ),
          ),

          /// Declarative programming StatefulBuilder
          body: Center(
            child: myCounter(context),
          ),
        );
      },
    );
  }

  /// Change part of the ui
  Widget myCounter(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  // conunter--;
                });
              },
              icon: const Icon(
                Icons.remove,
                size: 50,
              ),
            ),
            const Text(
              "My is \$conunter", //
              style: TextStyle(fontSize: 33),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  // conunter++;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ],
        );
      },
    );
  }
}
