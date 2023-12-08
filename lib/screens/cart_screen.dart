import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: const Color.fromARGB(232, 245, 5, 77),
        title: const Text(
          'My Cart',
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 238, 222, 4)),
          //Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name)),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Checkout',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 51, 0), fontSize: 20),
              ))
        ],
      ),
    );
  }
}
