import 'package:prueba_liverpool/data/services/remote/products_service.dart';
import 'package:prueba_liverpool/domain/models/product_model.dart';

import '../../domain/repository/product_repository.dart';
import '../../utils/either/either.dart';
import '../../utils/enums/failures.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductsService _productService;

  ProductRepositoryImpl({
    required ProductsService productService,
  }) : _productService = productService;

  @override
  Future<Either<FailuresEnum, Product>> getProduct() async {
    final resultProduct = await _productService.getProducts();
    return resultProduct.when(
      (failure) async => Either.left(
        failure,
      ),
      (result) async => Either.right(
        result,
      ),
    );
  }
}
