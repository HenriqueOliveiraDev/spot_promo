import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_promo/src/service/login_service.dart';
import 'package:spot_promo/src/view/page/login.dart';
import 'package:spot_promo/src/view/page/products.dart';

class AplicationController {
  LoginService loginService = LoginService();

  openApp(context) async {
    (await loginService.isAuth() == null)
        ? Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (_) => false)
        : Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => Product(),
            ),
            (_) => false);
  }
}
