import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_tabkhtnaa/features/splash/presentation/splash_view.dart';

void main() {
  runApp(const UserTabkhtnaa());
}

class UserTabkhtnaa extends StatelessWidget {
  const UserTabkhtnaa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
