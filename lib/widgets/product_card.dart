import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/product-detail',
          arguments: product,
        );
      },
      child: Card(
        child: Column(
          children: [
            Expanded(child: Image.network(product.image, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.name,
                  maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            Text("R\$ ${product.price.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
