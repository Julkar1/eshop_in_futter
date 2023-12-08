import 'package:flutter/material.dart';
import 'package:ecom/screens/pdt_detail_screen.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../models/cart.dart';

class PdtItem extends StatelessWidget {
  final String? name;
  final String? imageUrl;

  const PdtItem({super.key, this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          footer: GridTileBar(
              title: Text(name!),
              trailing: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    // ignore: deprecated_member_use
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 3),
                      content: Text('Item Added to Cart'),
                    ));
                    cart.addItem(pdt.id, pdt.name, pdt.price);
                  }),
              backgroundColor: const Color.fromARGB(255, 32, 30, 31)),
          child: Image.network(imageUrl!),
        ),
      ),
    );
  }
}
