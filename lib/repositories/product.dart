import 'package:custom1/models/product.dart';

abstract class ProductBase {
  Future<List<Product>> getProducts();
}

class ProductRepository with ProductBase {
  @override
  Future<List<Product>> getProducts() async {
    var response = await Future.delayed(Duration(milliseconds: 350),(){
      var list = [
         Product.fromJson({
          'id': 1,
          'image': 'soy una imagen',
          'color': 'soy una imagen',
          'name': 'aguacate',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 2,
          'image': 'soy una imagen',
          'color': 'soy una imagen',
          'name': 'mango',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        })
      ];

      print(list);
    return productListToJson(list);

   });
    return productListFromJson(response);
  }
}
