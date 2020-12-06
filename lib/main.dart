import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spot_promo/src/model/product_model.dart';
import 'package:spot_promo/src/view/page/splash_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>('product');
  
  await DotEnv().load('dotenv.env');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpotPromo',
      theme: ThemeData(
        primaryColor: Color(0xffca0026),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
