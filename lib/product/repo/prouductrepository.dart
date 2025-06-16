import 'dart:convert';

import 'package:ecommerce/product/model/productModel.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class ProductRepository {
  Future<List<ProductModel>> getproducts() async {
    Logger().d('ProductRepository::getproducts');
    final String response = await rootBundle.loadString('assets/json/product.json');
    final List data = json.decode(response);
    Logger().d('ProductRepository::data: ${data}');
    return data.map((item) => ProductModel.fromJson(item)).toList();
  }
}
