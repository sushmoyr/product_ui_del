import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:product_ui_del/data/models/product.dart';

class FileController extends ChangeNotifier {
  List<Product> productData = [];

  void loadProductsFromAssets(String key) {
    rootBundle.loadString(key).then((value) {
      productData = Product.fromList(jsonDecode(value));
      notifyListeners();
    });
  }
}
