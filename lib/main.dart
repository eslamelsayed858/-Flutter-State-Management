import 'package:bloc/state_inherited_shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'state_bloc_pattern_counter/scren_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScrenApp(),
      ),
    );
  }
}
