import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';
import 'package:user_tabkhtnaa/features/login/presentation/widgets/login_body.dart';
import 'package:user_tabkhtnaa/features/on_Boarding/presentation/widgets/on_boaarding_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}
