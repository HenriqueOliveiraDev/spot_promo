import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonSimple extends StatelessWidget {
  String title;
  Color color;
  Function onTap;

  ButtonSimple({
    this.title,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: this.onTap,
        child: Text(
          this.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: this.color,
      ),
    );
  }
}
