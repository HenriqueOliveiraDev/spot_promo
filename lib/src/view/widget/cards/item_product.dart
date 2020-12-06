import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_promo/src/model/product_model.dart';

// ignore: must_be_immutable
class ItemProduct extends StatelessWidget {
  ProductModel productModel;

  ItemProduct({this.productModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 50,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(this.productModel.codMarca),
            Text(this.productModel.desSubCategoria),
            Text(this.productModel.desMarca),
            Text('\$ ${this.productModel.precoSugerido}'),
          ],
        ),
      ),
    );
  }
}
