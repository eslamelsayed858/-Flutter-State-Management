import 'package:bloc/state_inherited_shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';

/// Another page because if I have products to listen to
class CartDetails extends StatelessWidget {
  const CartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingCart cart1 = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("CartDetails"),
      ),
      body: Center(
        child: Text(
          "${cart1.product.length} Selected",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
