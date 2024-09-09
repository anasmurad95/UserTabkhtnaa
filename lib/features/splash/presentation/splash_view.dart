import 'package:flutter/material.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';
import 'package:user_tabkhtnaa/features/splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme_Information.Primary_Color,
      body: const SplashBody(),
    );
  }
}
