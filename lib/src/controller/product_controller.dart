import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:spot_promo/src/model/product_model.dart';
import 'package:spot_promo/src/service/login_service.dart';
import 'package:spot_promo/src/service/product_service.dart';

class ProductController {
  LoginService loginService = LoginService();
  ProductService productService = ProductService();
  List<ProductModel> listProductService;
  
  void transferServiceLocation() async {
    listProductService =
        await productService.allProduct(await loginService.token());
    int lengthHive = Hive.box<ProductModel>('product').length;
    print(lengthHive);
    if (lengthHive == 0) {
      productService.saveHive(await loginService.token());
      debugPrint('SALVOU');
    }
  }
}
