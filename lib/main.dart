import 'package:app_lustrious/pages/pagina_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_lustrious/pages/product_list_page.dart';
import 'package:app_lustrious/widgets/category_carrossel.dart';
import 'package:app_lustrious/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Tela inicial = Login
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const HomePage(),
        '/products': (context) => const ProductsPage(),
        '/cadastro': (context) => const Cadastro(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName =
        ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFDF3E7), // tom claro
              Color(0xFFF0D6A9), // tom dourado suave
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Saudação estilosa 👋
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Olá, $userName 👋",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5A4633),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Seja bem-vindo(a) à Lustrious ✨",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF7A6A57),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white.withOpacity(0.8),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xFF5A4633),
                          size: 28,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // Carrossel de Categorias 🌀
                  const CategoryCarrossel(),

                  const SizedBox(height: 25),

                  // Seção destaque
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "💎 Novidades e Ofertas",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5A4633),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Confira os produtos mais desejados e promoções exclusivas!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7A6A57),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
