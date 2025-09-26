import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(product.image, height: 250),
            const SizedBox(height: 16),
            Text(product.name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text("R\$ ${product.price.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Adicionar ao carrinho"),
            ),
          ],
        ),
      ),
    );
  }
}
