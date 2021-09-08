import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constances/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {Key? key,
      required this.title,
      this.backgroundColor = ColorApp.MAIN,
      this.paddingHorizontal,
      this.paddingVertical,
      required this.callback})
      :super(key: key);
  late final Color backgroundColor;
  late final Widget title;
  late final VoidCallback? callback;
  late final double? paddingHorizontal;
  late final double? paddingVertical;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: title,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
              horizontal: paddingHorizontal ?? 132.w,
              vertical: paddingVertical ?? 16.h),
        ),
        elevation: MaterialStateProperty.all(4),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.r),
            ),
          ),
        ),
      ),
    );
  }
}
