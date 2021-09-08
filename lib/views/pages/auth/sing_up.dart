import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/custom_input_filed.dart';
import 'package:meal_monkey/views/components/text_action.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';
import 'package:meal_monkey/views/pages/auth/login.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          TitleSubTitle(
            title: 'Sign Up',
            subTitle: 'Add your details to login',
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(
            height: 36.h,
          ),
          CustomInputFiled(
            placeHolder: 'Name',
            autofocus: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputFiled(
            placeHolder: 'Email',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputFiled(
            placeHolder: 'Mobile No',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputFiled(
            placeHolder: 'Address',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputFiled(
            placeHolder: 'Password',
            obscureText: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomInputFiled(
            placeHolder: 'Confirm Password',
            obscureText: true,
          ),
          SizedBox(
            height: 36.h,
          ),
          CustomElevatedButton(
            title: Text('Sign Up'),
            callback: () {},
          ),
          SizedBox(
            height: 8.h,
          ),
          TextAction(
            text: 'Don\'t have an Account?',
            textSize: 11.h,
            textAction: 'Login',
            callback: () {
              Get.to(Login());

            },
          ),
        ],
      ),
    );
  }
}
