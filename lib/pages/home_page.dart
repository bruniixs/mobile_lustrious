import 'package:flutter/material.dart';
import '../widgets/category_carrossel.dart';
import '../widgets/best_seller_carrossel.dart';
import '../models/product_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loja Lustrious")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const CategoryCarrossel(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Mais vendidos",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            // aqui chamamos o carrossel passando a lista
            BestSellerCarrossel(products: bestSellers),
          ],
        ),
      ),
    );
  }
}
