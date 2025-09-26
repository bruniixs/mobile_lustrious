import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = sampleProducts[0]; // exemplo fixo

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("R\$ ${product.price.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20, color: Colors.brown)),
            const SizedBox(height: 16),
            const Text("Descrição do produto aqui..."),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
              child: const Text("Adicionar ao carrinho"),
            ),
          ],
        ),
      ),
    );
  }
}
