import 'package:flutter/material.dart';
import 'package:state/state_inherited_widget_counter/counter_provider.dart';

class HomeAppCounter extends StatelessWidget {
  HomeAppCounter({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);

    /// object in CounterProvider
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter using InheritedWidget",
        ),
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${provider.counter}",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        provider.counter++;
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
