import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../repositories/product_repository.dart';

class ProductProvider extends ChangeNotifier {
  final ProductRepository repository;
  List<Product> _products = [];

  ProductProvider(this.repository);

  List<Product> get products => _products;

  Future<void> loadProducts() async {
    _products = await repository.fetchProducts();
    notifyListeners();
  }
}
