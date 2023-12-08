import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './pdt_item.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: PdtItem(
            name: pdts[i].name,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}
