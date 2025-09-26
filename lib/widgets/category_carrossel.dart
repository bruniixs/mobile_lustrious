import 'package:flutter/material.dart';

class CategoryCarrossel extends StatelessWidget {
  const CategoryCarrossel({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["Rosto", "Cabelo", "Pele", "Corpo"];

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/products', arguments: categories[index],);
            },
            child: Container(
              width: 100,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.brown[100],
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/100"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black45,
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
