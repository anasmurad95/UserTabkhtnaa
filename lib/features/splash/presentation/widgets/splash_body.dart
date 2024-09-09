import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_tabkhtnaa/configuration/images.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';
import 'package:user_tabkhtnaa/features/on_Boarding/presentation/on_boaarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration( milliseconds: 1000));
    fadingAnimation = Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: Image.asset(
            ImagePath.backGroundPage2,
          ),
        ),
        // White curved shape at the bottom
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            FadeTransition(
              opacity: fadingAnimation!,
              child: Image.asset(
              ImagePath.logo,
              color: Theme_Information.Color_1,
              scale: 1,
               ),
            ),
            ],
          ),
        ),
      ],
    );
  }


  void goToNextView() {
    Future.delayed(Duration(seconds: 5),(){
      Get.to(()=>OnBoaardingView() , transition: Transition.fade);
    });
  }
}