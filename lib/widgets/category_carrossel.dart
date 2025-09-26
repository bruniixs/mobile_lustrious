import 'package:flutter/material.dart';

class CategoryCarrossel extends StatelessWidget {
  const CategoryCarrossel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ["Pele", "Rosto", "Cabelo", "Corpo"];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/products',
                arguments: categories[index],
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
