import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/squer_input.dart';
import 'package:meal_monkey/views/components/text_action.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          children: [
            TitleSubTitle(
              title: 'We have sent an OTP to your Mobile',
              subTitle:
                  'Please check your mobile number 071*****12 continue to reset your password',
              titleSize: 24.h,
              titleAlign: TextAlign.center,
              spaceBetween: 16.h,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            SizedBox(
              height: 48.h,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SquerInput(
                    autofocus: true,
                  ),
                  SquerInput(),
                  SquerInput(),
                  SquerInput(),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            CustomElevatedButton(
              title: Text('Next'),
              callback: () {},
            ),
            SizedBox(
              height: 8.h,
            ),
            TextAction(
              text: 'Didn\'t Receive?',
              textAction: 'Click Here',
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
