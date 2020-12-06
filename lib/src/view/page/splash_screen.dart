import 'package:flutter/material.dart';
import 'package:spot_promo/src/controller/aplication_controller.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AplicationController aplicationController = AplicationController();

  @override
  void initState() {
    new Future.delayed(Duration(milliseconds: 2000), () {
      aplicationController.openApp(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Center(
        child: Image(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
