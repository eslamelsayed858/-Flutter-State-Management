import 'package:block/state_inherited_shopping_cart/class_product.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ShoppingCart extends InheritedWidget {
  final List<Product> product = [];
  Widget child;

  ShoppingCart({required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(ShoppingCart oldWidget) {
    return !IterableEquality().equals(product, oldWidget.product);
  }

  static ShoppingCart of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType()!;
}
