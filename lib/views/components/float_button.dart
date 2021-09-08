import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constances/colors.dart';

class CustomFloatButton extends StatelessWidget {
  CustomFloatButton({Key? key, required this.text, required this.callback})
      : super(key: key);
  late final VoidCallback? callback;
  late final Widget text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: text,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              color: ColorApp.MAIN,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(120.r),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 98.w, vertical: 14.h),
        ),
      ),
    );
  }
}
