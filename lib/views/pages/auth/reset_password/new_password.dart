import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/custom_input_filed.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

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
              title: 'New Password',
              subTitle:
                  'Please enter your email to receive a link to  create a new password via email',
              titleSize: 24.h,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            SizedBox(
              height: 48.h,
            ),
            Flexible(
              child: CustomInputFiled(
                placeHolder: 'New Password',
                autofocus: true,
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Flexible(
              child: CustomInputFiled(
                placeHolder: 'Confirm Password',
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Flexible(
              child: CustomElevatedButton(
                title: Text('Next'),
                callback: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
