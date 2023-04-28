import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/state_bl_pattern_counter/counter_bloc.dart';
import 'package:state/state_bl_pattern_counter/counter_event.dart';

class ScrenApp extends StatelessWidget {
  const ScrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc cb = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("block"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                cb.add(CounterEvent.add);
              },
              icon: const Icon(Icons.add),
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text("$state");
              },
            ),
            IconButton(
              onPressed: () {
                cb.add(CounterEvent.remove);
              },
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
