import 'package:flutter/material.dart';
import 'package:ecom/widgets/home_body.dart';
import '../screens/cart_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 197, 223),
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(232, 245, 5, 77),
          title: const Text('E-Shop'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CartScreen.routeName))
          ],
        ),
        body: const HomeBody());
  }
}
