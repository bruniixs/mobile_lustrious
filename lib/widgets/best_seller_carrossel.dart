import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_card.dart';

class BestSellerCarrossel extends StatelessWidget {
  final List<Product> products;

  const BestSellerCarrossel({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 180,
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}
