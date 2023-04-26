import 'package:flutter/material.dart';

/// If you want the data to point anywhere
class CounterProvider extends InheritedWidget {
  int counter = 0;
  final Widget child;

  CounterProvider({required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType()!;
}
