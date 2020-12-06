import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_promo/src/controller/login_controller.dart';
import 'package:spot_promo/src/view/widget/buttons/button_simple.dart';
import 'package:spot_promo/src/view/widget/forms/form_password.dart';
import 'package:spot_promo/src/view/widget/forms/form_username.dart';


class Login extends StatelessWidget {
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: loginController.scaffoldState,
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: StreamBuilder(
            initialData: false,
            stream: loginController.loadingStream,
            builder: (BuildContext context, snapshot) {
              return (!snapshot.data)
                  ? Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FormUsername(loginController.controllerUsername,
                                  'Username'),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              FormPassword(loginController.controllerPassword,
                                  'Password', loginController),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              ButtonSimple(
                                title: 'Entrar',
                                color: Theme.of(context).primaryColor,
                                onTap: () async {
                                  await loginController.setLogin(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : CircularProgressIndicator(backgroundColor: Colors.white,);
            }),
      ),
    );
  }
}
