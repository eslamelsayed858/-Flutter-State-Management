import 'dart:math';
import 'package:badges/badges.dart' as badges;
import 'package:bloc/state_inherited_shopping_cart/cart_details.dart';
import 'package:bloc/state_inherited_shopping_cart/class_product.dart';
import 'package:bloc/state_inherited_shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // List To give me a number of different products and prices
  List<Product> items = List.generate(100, (index) {
    return Product(
      name: "Product $index",
      isCheck: false,
      price: Random().nextInt(5000),
    );
  });
  @override
  Widget build(BuildContext context) {
    ShoppingCart cart = ShoppingCart.of(context);
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Shopping Cart"),
            actions: [
              Container(
                padding: const EdgeInsets.all(20),
                child: badges.Badge(
                  badgeContent: Text(
                    '${cart.product.length}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 2, 2, 2),
                    ),
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Color.fromARGB(255, 247, 187, 187),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartDetails(),
                        ));
                      },
                      icon: const Icon(Icons.shopping_cart)),
                ),
              )
            ],
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 247, 187, 187),
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Row(
                      children: [
                        // product name
                        Expanded(child: Text(items[index].name)),
                        Checkbox(
                          value: items[index].isCheck,

                          /// * Checkbox
                          onChanged: (value) {
                            setState(
                              () {
                                /// I make a check so that the code is heard when I come to choose the number of the product
                                items[index].isCheck = !items[index].isCheck;
                                if (items[index].isCheck) {
                                  cart.product.add(items[index]);
                                } else {
                                  cart.product.remove(items[index]);
                                }
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    // Product price
                    subtitle: Text("${items[index].price} EGP "),
                  ),
                );
              }),
        );
      },
    );
  }
}
