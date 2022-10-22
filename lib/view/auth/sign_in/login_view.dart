import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market_app/model/response_user_model.dart';
import 'package:flutter_market_app/service/dio_network_src.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void onSignIn() async {
    try {
      var login = loginController.text;
      var password = passwordController.text;
      if (login.isEmpty || password.isEmpty) return;
      Map<String, dynamic> body = {"username": login, 'password': password};
      Map<String, dynamic>? loginResponse =
          await DioNetworkSrc.postRequest<Map<String, dynamic>>(
              api: AppNetworkConsts.userLogin, header: body);
      ResponseUserModel? user = ResponseUserModel.fromJson(loginResponse!);

      if (user.token != null) {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('Login'),
            content: const Card(
              child: Text('User muvofaqqiyatli tizimga kirdi'),
            ),
            actions: [
              CupertinoDialogAction(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoTextField(
                controller: loginController,
                placeholder: "Username",
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField(
                controller: passwordController,
                placeholder: "password",
              ),
              CupertinoButton.filled(
                  onPressed: onSignIn, child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
