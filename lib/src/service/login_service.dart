import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot_promo/src/model/response_model.dart';
import 'package:spot_promo/src/model/user_login_model.dart';
import 'package:spot_promo/src/service/product_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginService {
  ResponseModel responseModel;
  SharedPreferences prefs;
  ProductService productService = ProductService();

  Future<String> login(UserLoginModel userLoginModel) async {
    String result = '';
    try {
      await Dio()
          .post(
        '${DotEnv().env['VAR_HOST']}/login',
        data: userLoginModel.toJson(),
      )
          .then((value) async{
        responseModel = ResponseModel.fromJson(value.data);

        if (!responseModel.error) {
          saveToken(responseModel.token);
          await productService.saveHive(responseModel.token);

        } else {
          result = 'error';
        }
      });
    } catch (error) {
      debugPrint(error);
    }
    return result;
  }

  Future<void> saveToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuth', true);
    await prefs.setString('token', token);
  }

  Future<bool> isAuth() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAuth');
  }

  Future<String> token() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  void logout() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAuth', false);
    prefs.setString('token', '');
  }
}
