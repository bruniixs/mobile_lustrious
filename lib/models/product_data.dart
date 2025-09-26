import 'product.dart';

// Lista geral de produtos
final List<Product> sampleProducts = [
  // 🟢 Categoria: Pele
  Product(
    name: "Protetor Solar FPS 50",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Pele",
  ),
  Product(
    name: "Hidratante Facial",
    image: "https://via.placeholder.com/150",
    price: 45.0,
    category: "Pele",
  ),

  // 🟢 Categoria: Rosto
  Product(
    name: "Máscara Facial",
    image: "https://via.placeholder.com/150",
    price: 29.9,
    category: "Rosto",
  ),
  Product(
    name: "Esfoliante Facial",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Rosto",
  ),

  // 🟢 Categoria: Cabelo
  Product(
    name: "Shampoo Revitalizante",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "https://via.placeholder.com/150",
    price: 42.9,
    category: "Cabelo",
  ),

  // 🟢 Categoria: Corpo
  Product(
    name: "Hidratante Corporal",
    image: "https://via.placeholder.com/150",
    price: 49.9,
    category: "Corpo",
  ),
  Product(
    name: "Óleo Corporal",
    image: "https://via.placeholder.com/150",
    price: 55.0,
    category: "Corpo",
  ),
];

// Lista de produtos mais vendidos (para a HomePage)
final List<Product> bestSellers = [
  sampleProducts[0],
  sampleProducts[2],
  sampleProducts[4],
  sampleProducts[6],
];
