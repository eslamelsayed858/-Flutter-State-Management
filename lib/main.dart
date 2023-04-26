import 'package:block/state_inherited_shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'state_inherited_shopping_cart/inherited_shopping_cart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
