import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String? productId;
  final double price;
  final int quantity;
  final String name;

  const CartPdt(this.id, this.productId, this.price, this.quantity, this.name,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: const Color.fromARGB(232, 245, 5, 77),
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(child: Text('৳$price')),
          ),
          title: Text(name),
          subtitle: Text('Total: ৳${(price * quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
