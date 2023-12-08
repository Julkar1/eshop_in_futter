import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Icon icon;
  final String name;

  const CategoryCard(this.icon, this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(232, 245, 5, 77),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(blurRadius: 5, color: Color.fromARGB(255, 230, 119, 119))
          ],
        ),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              icon,
              const SizedBox(
                height: 10,
              ),
              Text(name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
