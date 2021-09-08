import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/custom_input_filed.dart';
import 'package:meal_monkey/views/components/text_action.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';
import 'package:meal_monkey/views/pages/auth/sing_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            TitleSubTitle(
                title: 'Login', subTitle: 'Add your details to login'),
            SizedBox(
              height: 48.h,
            ),
            Flexible(
              child: CustomInputFiled(
                placeHolder: 'Your Email',
                autofocus: true,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Flexible(
              child: CustomInputFiled(
                placeHolder: 'Password',
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Flexible(
              child: CustomElevatedButton(
                title: Text('Login'),
                callback: () {},
              ),
            ),
            Flexible(
              child: TextAction(
                text: '',
                textAction: 'Forgot your password?',
                callback: () {},
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Flexible(
              child: Transform.translate(
                offset: Offset(24.w, 0),
                child: TextAction(
                  text: 'or Login With',
                  textAction: '',
                  callback: null,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
            ),
            Flexible(
              child: CustomElevatedButton(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.facebook),
                    Text('  Login with Facebook'),
                  ],
                ),
                callback: () {},
                backgroundColor: Color(0xff367FC0),
                paddingHorizontal: 68.h,
                paddingVertical: 14.h,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Flexible(
              child: CustomElevatedButton(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaIcon(FontAwesomeIcons.googlePlus),
                    Text('  Login with Google'),
                  ],
                ),
                callback: () {},
                backgroundColor: Color(0xffDD4B39),
                paddingHorizontal: 76.h,
                paddingVertical: 12.h,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Flexible(
              child: TextAction(
                text: 'Don\'t have an Account?',
                textSize: 12.h,
                textAction: 'Sign Up',
                callback: () {
                  Get.to(SingUp());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
