import 'package:flutter/foundation.dart';

import '../../../domain/models/product_model.dart';

class ProductController extends ChangeNotifier {
  late bool _isLoading = true;
  late bool _onErrorGetProducts = false;

  late List<Product> _products;
  late Product _product;

  bool get isLoading => _isLoading;

  bool get onErrorGetProducts => _onErrorGetProducts;

  List<Product> get products => _products;
  Product get product => _product;

  setProducts(List<Product> products) {
    _products = products;
    _isLoading = false;
    _onErrorGetProducts = false;
    notifyListeners();
  }

  setProduct(Product product) {
    _product = product;
    _isLoading = false;
    _onErrorGetProducts = false;
    notifyListeners();
  }

  onLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
