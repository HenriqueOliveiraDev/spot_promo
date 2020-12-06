import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_promo/src/controller/login_controller.dart';

// ignore: must_be_immutable
class FormPassword extends StatefulWidget {
  String hint;
  TextEditingController controller;
  LoginController loginController = LoginController();

  FormPassword(
    this.controller,
    this.hint,
    this.loginController,
  );
  @override
  _FormPasswordState createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.loginController.streamOutput,
        initialData: true,
        builder: (context, snapshot) {
          return TextField(
            controller: widget.controller,
            obscureText: (snapshot.data) ? true : false,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  widget.loginController.switchVisiblePassword();
                },
                child: (snapshot.data)
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
              hintText: widget.hint,
            ),
          );
        });
  }
}
