import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';
import '../models/product_data.dart' hide sampleProducts;

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)!.settings.arguments as String;

    // filtra produtos pela categoria
    final List<Product> filteredProducts = sampleProducts
        .where((p) => p.category.toLowerCase() == category.toLowerCase())
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("Produtos de $category")),
      body: filteredProducts.isEmpty
          ? const Center(
              child: Text("Nenhum produto encontrado nessa categoria."),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // duas colunas
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
