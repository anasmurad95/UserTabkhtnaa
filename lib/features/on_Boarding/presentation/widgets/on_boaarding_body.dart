import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_tabkhtnaa/configuration/images.dart';
import 'package:user_tabkhtnaa/configuration/theme.dart';
import 'package:user_tabkhtnaa/features/login/presentation/login_view.dart';

class OnBoaardingBody extends StatefulWidget {
  const OnBoaardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoaardingBody> createState() => _OnBoaardingBodyState();
}

class _OnBoaardingBodyState extends State<OnBoaardingBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  // Dropdown related variables
  String? selectedValue;
  List<String> dropdownItems = ['AR', 'EN', 'FR' , 'TU'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void getValueLang(String? value) {
    print('Selected value: $value');
    Future.delayed(Duration(seconds: 2),(){
      Get.to(()=>LoginView() , transition: Transition.fade);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            ImagePath.backGroundPage2,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(50),
                child: Image.asset(
                  ImagePath.logo,
                  color: Theme_Information.Color_1,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 200),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme_Information.Primary_Color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButton<String>(
                  padding: EdgeInsets.all(5),
                  isExpanded: true,
                  value: selectedValue,
                  hint: Text("اختيار اللغة"),
                  icon: Icon(Icons.arrow_drop_down),
                  underline: SizedBox(),
                  items: dropdownItems.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue;
                      getValueLang(newValue);
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              CircularProgressIndicator(color: Theme_Information.Primary_Color,)
            ],
          ),
        ),
      ],
    );
  }
}
