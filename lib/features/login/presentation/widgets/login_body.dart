import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_tabkhtnaa/configuration/images.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _OnBoaardingBodyState();
}

class _OnBoaardingBodyState extends State<LoginBody> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            ImagePath.backGroundPage3,
          ),
        ),
      ],
    );
  }
}
