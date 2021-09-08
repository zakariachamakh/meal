import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/constances/colors.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/float_button.dart';
import 'package:meal_monkey/views/components/logo.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';

import 'auth/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: 1.sw,
            height: 0.45.sh,
          ),
          Transform.translate(
            offset: Offset(0.24.sw, 0.38.sh),
            child: AppLogo(),
          ),
          Transform.translate(
            offset: Offset(0.02.sw, 0.58.sh),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TitleSubTitle(
                  title: '',
                  subTitle:
                      'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep'),
            ),
          ),
          Transform.translate(
            offset: Offset(0.07.sw, 0.76.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: CustomElevatedButton(
                    title: Text('Login'),
                    callback: () {
                      Get.to(Login());
                    },
                  ),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Flexible(
                  child: CustomFloatButton(
                    text: Text(
                      'Create an Account',
                      style: TextStyle(color: ColorApp.MAIN),
                    ),
                    callback: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
