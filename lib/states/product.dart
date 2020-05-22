
import 'package:custom1/repositories/product.dart';
import 'package:flutter/material.dart';
import 'package:custom1/models/product.dart';

class ProductProvider with ChangeNotifier{
  final ProductRepository _repository = ProductRepository();
  List<Product> _productList;
  bool _loading = true;

  List<Product> get productList => _productList;
  bool get loading => _loading;


  void getProduct() async {
    _loading = true;
    print('execute');
    notifyListeners();
    _productList = await _repository.getProducts();
    _productList.forEach((element) {print(element.name);});
    _loading = false; 
    notifyListeners();
  }

}