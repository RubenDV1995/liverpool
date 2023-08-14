import 'package:flutter/material.dart';
import 'package:prueba_liverpool/data/repositories_implementatio/product_repository_impl.dart';
import 'package:prueba_liverpool/utils/enums/failures.dart';

import '../../../domain/models/product_model.dart';
import '../../../utils/either/either.dart';

class ProductController extends ChangeNotifier {
  final ProductRepositoryImpl productRepositoryImpl;
  late ScrollController scrollControllerProducts;

  ProductController({
    required this.productRepositoryImpl,
    required this.scrollControllerProducts,
  });

  late bool _isLoading = true;
  late bool _onErrorGetProducts = false;
  late List<Record> _products;
  late List<Record> _currentProducts;
  late List<SortOption> _sortOption;
  late FailuresEnum _failuresEnum;

  bool get isLoading => _isLoading;

  bool get onErrorGetProducts => _onErrorGetProducts;

  List<Record> get products => _products;

  List<Record> get currentProducts => _currentProducts;

  List<SortOption> get sortOption => _sortOption;

  FailuresEnum get failureEnum => _failuresEnum;

  Future<Either<FailuresEnum, Temperatures>> getProducts() async {
    final resultProducts = await productRepositoryImpl.getProduct();
    return resultProducts.when(
      (failure) {
        onLoading(false);
        onError(
          failuresEnum: failure,
        );
        return Either.left(
          failure,
        );
      },
      (temperature) {
        onLoading(false);
        _products = temperature.plpResults.records;
        setTemperature(
          temperature.plpResults.records,
        );
        setSortOption(
          sortOption: temperature.plpResults.sortOptions,
        );
        return Either.right(
          temperature,
        );
      },
    );
  }

  Either<FailuresEnum, List<Record>> onSortOption({required String query}) {
    try {
      List<Record> resultProducts = [];
      final List<Record> currentProducts = _products;
      if (query.isEmpty) {
        resultProducts = currentProducts;
      } else {
        resultProducts = currentProducts
            .where(
              (element) => element.productDisplayName.toLowerCase().contains(
                    query.toLowerCase(),
                  ),
            )
            .toList();
      }
      setTemperature(resultProducts);
      return Either.right(
        resultProducts,
      );
    } catch (e) {
      onError(
        failuresEnum: FailuresEnum.parseError,
      );
      return Either.left(
        FailuresEnum.parseError,
      );
    }
  }

  setTemperature(List<Record> products) {
    _onErrorGetProducts = false;
    _currentProducts = products;
    notifyListeners();
  }

  setSortOption({required List<SortOption> sortOption}) {
    _onErrorGetProducts = false;
    _sortOption = sortOption;
    notifyListeners();
  }

  onLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  onError({required FailuresEnum failuresEnum}) {
    _failuresEnum = failuresEnum;
    _onErrorGetProducts = true;
    notifyListeners();
  }
}
