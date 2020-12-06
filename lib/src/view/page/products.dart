import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:spot_promo/src/model/product_model.dart';
import 'package:spot_promo/src/view/widget/cards/item_product.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var listProduct = Hive.box<ProductModel>('product');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos'), actions: []),
      body: ListView.builder(
          itemCount: listProduct.length,
          itemBuilder: (BuildContext context, int index) {
            var product = listProduct.get(index);
            return ItemProduct(productModel: product);
          }),
    );
  }
}
