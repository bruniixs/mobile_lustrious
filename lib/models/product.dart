class Product {
  final String name;
  final String image;
  final double price;
  final String category;

  Product({required this.name, 
  required this.image, 
  required this.price, 
  required this.category});
}
final List<Product> sampleProducts = [
  // ================== PELE ==================
  Product(
    name: "Creme Hidratante Facial",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Pele",
  ),
  Product(
    name: "Sérum Anti-Idade",
    image: "https://via.placeholder.com/150",
    price: 129.9,
    category: "Pele",
  ),
  Product(
    name: "Protetor Solar FPS 50",
    image: "https://via.placeholder.com/150",
    price: 89.9,
    category: "Pele",
  ),
  Product(
    name: "Gel de Limpeza Facial",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Pele",
  ),
  Product(
    name: "Tônico Adstringente",
    image: "https://via.placeholder.com/150",
    price: 49.9,
    category: "Pele",
  ),
  Product(
    name: "Máscara de Argila Verde",
    image: "https://via.placeholder.com/150",
    price: 29.9,
    category: "Pele",
  ),
  Product(
    name: "Esfoliante Facial Suave",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Pele",
  ),
  Product(
    name: "Água Micelar",
    image: "https://via.placeholder.com/150",
    price: 44.9,
    category: "Pele",
  ),
  Product(
    name: "Sérum Vitamina C",
    image: "https://via.placeholder.com/150",
    price: 119.9,
    category: "Pele",
  ),
  Product(
    name: "Hidratante em Gel Noturno",
    image: "https://via.placeholder.com/150",
    price: 64.9,
    category: "Pele",
  ),

  // ================== ROSTO ==================
  Product(
    name: "Base Líquida Matte",
    image: "https://via.placeholder.com/150",
    price: 89.9,
    category: "Rosto",
  ),
  Product(
    name: "Corretivo Alta Cobertura",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Rosto",
  ),
  Product(
    name: "Pó Compacto Translúcido",
    image: "https://via.placeholder.com/150",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Blush Rosado",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Rosto",
  ),
  Product(
    name: "Iluminador Líquido",
    image: "https://via.placeholder.com/150",
    price: 54.9,
    category: "Rosto",
  ),
  Product(
    name: "Batom Vermelho Luxo",
    image: "https://via.placeholder.com/150",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Gloss Labial Transparente",
    image: "https://via.placeholder.com/150",
    price: 29.9,
    category: "Rosto",
  ),
  Product(
    name: "Paleta de Sombras Neutras",
    image: "https://via.placeholder.com/150",
    price: 99.9,
    category: "Rosto",
  ),
  Product(
    name: "Delineador Líquido Preto",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Rosto",
  ),
  Product(
    name: "Máscara de Cílios Volume",
    image: "https://via.placeholder.com/150",
    price: 69.9,
    category: "Rosto",
  ),

  // ================== CABELO ==================
  Product(
    name: "Shampoo Hidratante",
    image: "https://via.placeholder.com/150",
    price: 35.0,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "https://via.placeholder.com/150",
    price: 40.0,
    category: "Cabelo",
  ),
  Product(
    name: "Máscara Capilar Reconstrução",
    image: "https://via.placeholder.com/150",
    price: 79.9,
    category: "Cabelo",
  ),
  Product(
    name: "Óleo Capilar Argan",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Cabelo",
  ),
  Product(
    name: "Leave-in Defrizante",
    image: "https://via.placeholder.com/150",
    price: 49.9,
    category: "Cabelo",
  ),
  Product(
    name: "Spray Texturizador",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Cabelo",
  ),
  Product(
    name: "Tônico Capilar Crescimento",
    image: "https://via.placeholder.com/150",
    price: 69.9,
    category: "Cabelo",
  ),
  Product(
    name: "Shampoo Anticaspa",
    image: "https://via.placeholder.com/150",
    price: 29.9,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Reconstrutor",
    image: "https://via.placeholder.com/150",
    price: 44.9,
    category: "Cabelo",
  ),
  Product(
    name: "Creme de Pentear Cachos",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Cabelo",
  ),

  // ================== CORPO ==================
  Product(
    name: "Hidratante Corporal",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Corpo",
  ),
  Product(
    name: "Óleo Corporal Perfumado",
    image: "https://via.placeholder.com/150",
    price: 69.9,
    category: "Corpo",
  ),
  Product(
    name: "Sabonete Líquido Esfoliante",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Corpo",
  ),
  Product(
    name: "Desodorante Spray",
    image: "https://via.placeholder.com/150",
    price: 22.9,
    category: "Corpo",
  ),
  Product(
    name: "Loção Firmadora",
    image: "https://via.placeholder.com/150",
    price: 79.9,
    category: "Corpo",
  ),
  Product(
    name: "Creme para Mãos",
    image: "https://via.placeholder.com/150",
    price: 24.9,
    category: "Corpo",
  ),
  Product(
    name: "Manteiga Corporal",
    image: "https://via.placeholder.com/150",
    price: 54.9,
    category: "Corpo",
  ),
  Product(
    name: "Esfoliante Corporal",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Corpo",
  ),
  Product(
    name: "Spray Hidratante Pós-Sol",
    image: "https://via.placeholder.com/150",
    price: 44.9,
    category: "Corpo",
  ),
  Product(
    name: "Perfume Body Splash",
    image: "https://via.placeholder.com/150",
    price: 89.9,
    category: "Corpo",
  ),
];
