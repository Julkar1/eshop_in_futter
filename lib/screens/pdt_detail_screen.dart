import 'package:flutter/material.dart';
import '../models/products.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String?;
    final loadedPdt = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(232, 245, 5, 77),
        title: Text(loadedPdt.name),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(loadedPdt.imgUrl),
            ),
          ),
          Text(
            'Price: ৳${loadedPdt.price}',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              loadedPdt.description, //'${loadedPdt.description}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.addItem(productId, loadedPdt.name, loadedPdt.price);
        },
        child: const Icon(
          Icons.shopping_cart,
          size: 30,
        ),
      ),
    );
  }
}
