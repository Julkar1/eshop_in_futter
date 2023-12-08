import 'package:flutter/material.dart';
import 'package:ecom/models/products.dart';
import 'package:ecom/screens/pdt_detail_screen.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './models/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Product(
              id: '',
              category: '',
              description: '',
              imgUrl: '',
              name: '',
              price: 6),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Shop',
        theme: ThemeData(
            primaryColor: const Color.fromARGB(232, 245, 5, 77),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: const Color.fromARGB(232, 245, 5, 77))),
        home: const HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => const DetailPage(),
          CartScreen.routeName: (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
