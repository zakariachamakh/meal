import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/custom_input_filed.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';

class EmailEnter extends StatefulWidget {
  const EmailEnter({Key? key}) : super(key: key);

  @override
  _EmailEnterState createState() => _EmailEnterState();
}

class _EmailEnterState extends State<EmailEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            TitleSubTitle(
              title: 'Reset Password',
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
                placeHolder: 'Email',
                autofocus: true,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            CustomElevatedButton(
              title: Text('Send'),
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
