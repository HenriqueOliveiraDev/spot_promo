import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:spot_promo/src/model/product_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


class ProductService {
  ProductModel productModel;

  // ignore: missing_return
  Future<List<ProductModel>> allProduct(String token) async {
    Response response = Response();
    try {
      response = await Dio().get(
        '${DotEnv().env['VAR_HOST']}/produtos',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      List<ProductModel> listProductModel =
          response.data.map<ProductModel>((item) {
        return ProductModel.fromJson(item);
      }).toList();
      return listProductModel;
    } catch (error) {
      debugPrint(error);
    }
  }

  Future<void> saveHive(String token) async {
    var box = Hive.box<ProductModel>('product');
    await allProduct(token).then((value) {
      value.forEach((item) {
        box.add(item);
      });
    });
  }
}
