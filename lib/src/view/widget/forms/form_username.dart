import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormUsername extends StatefulWidget {
  String hint;
  TextEditingController controller;

  FormUsername(
    this.controller,
    this.hint,
  );
  @override
  _FormUsernameState createState() => _FormUsernameState();
}

class _FormUsernameState extends State<FormUsername> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint,
      ),
    );
  }
}
