import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_liverpool/common/appbar/custom_appbar.dart';

import '../../../domain/repository/product_repository.dart';
import '../controller/product_controller.dart';
import '../widgets/product_item.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ///Repository
  late ProductRepository _productRepository;

  ///Controller
  late ProductController _productController;

  @override
  void initState() {
    super.initState();
    _setRepositoryAndController();
    _getListProduct();
  }

  void _setRepositoryAndController() {
    _productRepository = Provider.of<ProductRepository>(
      context,
      listen: false,
    );
    _productController = Provider.of<ProductController>(
      context,
      listen: false,
    );
  }

  Future<void> _getListProduct() async {
    final resultProduct = await _productRepository.getProduct();
    resultProduct.when(
      (failure) {
        print(
          failure.name.toString(),
        );
      },
      (products) {
        _productController.setProduct(products);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Liverpool',
      ),
      body: SizedBox(
        height: double.infinity,
        child: Builder(builder: (context) {
          final productController = Provider.of<ProductController>(context);
          if (productController.isLoading == true) {
            return const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            );
          }
          if (productController.onErrorGetProducts == true) {
            return Text('Error');
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Buscar",
                    fillColor: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: productController.product,
                    );
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
