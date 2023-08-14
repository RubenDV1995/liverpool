import 'package:flutter/material.dart';
import 'package:prueba_liverpool/data/repositories_implementatio/product_repository_impl.dart';
import 'package:prueba_liverpool/data/services/remote/products_service.dart';
import 'package:prueba_liverpool/domain/repository/product_repository.dart';
import 'package:prueba_liverpool/theme/theme.dart';

import 'data/services/http/http.dart';
import 'features/products/controller/product_controller.dart';
import 'features/products/page/product_page.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  final ProductRepositoryImpl productRepositoryImpl = ProductRepositoryImpl(
    productService: ProductsService(
      Http(
        baseUrl: 'https://newastro.vercel.app/',
        apiKey: '',
        client: http.Client(),
      ),
    ),
  );

  final ScrollController scrollControllerProducts = ScrollController();

  runApp(
    MultiProvider(
      providers: [
        Provider<ProductRepository>(
          create: (_) => productRepositoryImpl,
        ),
      ],
      child: ChangeNotifierProvider<ProductController>(
        create: (_) => ProductController(
          productRepositoryImpl: productRepositoryImpl,
          scrollControllerProducts: scrollControllerProducts,
        ),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Liverpool',
        theme: mainTheme,
        home: const ProductPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
