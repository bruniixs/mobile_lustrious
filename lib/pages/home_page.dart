import 'package:flutter/material.dart';
import '../widgets/category_carrossel.dart';
import '../widgets/best_seller_carrossel.dart';
import '../models/product_data.dart';

class HomePage extends StatelessWidget {
  final String? userName;
  const HomePage({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Lustrious",
          style: TextStyle(
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 👋 Saudação
                if (userName != null && userName!.isNotEmpty) ...[
                  Text(
                    "Olá,",
                    style: TextStyle(
                      fontSize: size.width * 0.05,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    userName!,
                    style: TextStyle(
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],

                // 🔍 Barra de busca
                TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar produtos...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // 🧭 Categorias
                Text(
                  "Categorias",
                  style: TextStyle(
                    fontSize: size.width * 0.055,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                const CategoryCarrossel(),

                const SizedBox(height: 25),

                // 🛍️ Mais vendidos
                Text(
                  "Mais vendidos",
                  style: TextStyle(
                    fontSize: size.width * 0.055,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                BestSellerCarrossel(products: bestSellers),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
