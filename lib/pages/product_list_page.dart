import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // pega a categoria passada pelo Navigator
    final String category = ModalRoute.of(context)!.settings.arguments as String;

    // filtra os produtos pela categoria
    final List<Product> filteredProducts =
        sampleProducts.where((p) => p.category == category).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Produtos de $category")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filteredProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: filteredProducts[index]);
        },
      ),
    );
  }
}
