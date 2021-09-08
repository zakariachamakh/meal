import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constances/colors.dart';

class FloatImageCard extends StatelessWidget {
  FloatImageCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.onPressed})
      : super(key: key);
  late final String title;
  late final String subTitle;
  late final String image;
  late final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Card(
          child: ListTile(
            title: Text(title.toString()),
            subtitle: Text(subTitle.toString()),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 44.w, vertical: 8.h),
          ),
          margin: EdgeInsets.all(24.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150.h),
              topLeft: Radius.circular(150.h),
              bottomRight: Radius.circular(28.h),
              topRight: Radius.circular(28.h),
            ),
          ),
          elevation: 8,
        ),
        Align(
          alignment: Alignment(-1, 0.0),
          child: CircleAvatar(
            radius: 28.h,
            backgroundImage: AssetImage(
              image,
            ),
          ),
        ),
        Align(
          alignment: Alignment(1, 0.0),
          child: ElevatedButton(
            onPressed: onPressed,
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: ColorApp.MAIN,
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(36.w),
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              fixedSize: MaterialStateProperty.all(
                Size(24.h, 16.w),
              ),
              elevation: MaterialStateProperty.all(6),
            ),
          ),
        ),
      ],
    );
  }
}
