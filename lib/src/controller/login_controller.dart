import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_promo/src/model/user_login_model.dart';
import 'package:spot_promo/src/service/login_service.dart';
import 'package:spot_promo/src/service/product_service.dart';
import 'package:spot_promo/src/view/page/products.dart';

class LoginController {
  LoginService loginService = LoginService();
  UserLoginModel userLoginModel = UserLoginModel();
  ProductService productService = ProductService();
  final TextEditingController controllerUsername = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final StreamController _streamController = StreamController.broadcast();
  final StreamController streamControllerLoading = StreamController.broadcast();


  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  bool visiblePassword = true;
  bool loading = false;

  Sink get streamInput => _streamController.sink;
  Stream get streamOutput => _streamController.stream;
  Sink get inputLoading => streamControllerLoading.sink;
  Stream get loadingStream => streamControllerLoading.stream;

  void switchVisiblePassword() {
    visiblePassword = !visiblePassword;
    streamInput.add(visiblePassword);
  }

  void switchLoading() {
    loading = !loading;
    inputLoading.add(loading);
  }

  String get getUsername => controllerUsername.text;
  String get getPassword => controllerPassword.text;

  void setLogin(context) async {
    switchLoading();
    userLoginModel.username = getUsername;
    userLoginModel.password = getPassword;
    String result = await loginService.login(userLoginModel);
    if (result == 'error') {
      switchLoading();
      scaffoldState.currentState.showSnackBar(
        SnackBar(
          content: Text('Username ou password inválidos'),
        ),
      );
    } else {
      await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => Product(),
          ),
          (route) => false);
    }
  }
}
