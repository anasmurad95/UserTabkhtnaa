import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';
import 'package:user_tabkhtnaa/features/on_Boarding/presentation/widgets/on_boaarding_body.dart';

class OnBoaardingView extends StatelessWidget {
  const OnBoaardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme_Information.Primary_Color,
      body: OnBoaardingBody(),
    );
  }
}
