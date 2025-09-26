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
  Product(
    name: "Maquiagem sei lá oq",
    image: "https://via.placeholder.com/150",
    price: 150.0,
    category: "Rosto",
  ),
  Product(
    name: "Produto teste",
    image: "https://via.placeholder.com/150",
    price: 99.9,
    category: "Pele",
  ),
];
