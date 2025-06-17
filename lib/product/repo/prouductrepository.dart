import 'dart:convert';

import 'package:ecommerce/product/model/productModel.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class ProductRepository {
  Future<List<ProductModel>> getproducts() async {
    Logger().d('ProductRepository::getproducts');
    final String response = await rootBundle.loadString('assets/json/product.json');
    Logger().d('ProductRepository::response: $response');

    // Parse the JSON as a Map first, then extract the products array
    final Map<String, dynamic> jsonData = json.decode(response);
    final List data = jsonData['products'];

    Logger().d('ProductRepository::data: $data');
    return data.map((item) => ProductModel.fromJson(item)).toList();
  }
}
