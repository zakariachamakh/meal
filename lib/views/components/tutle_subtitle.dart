import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSubTitle extends StatelessWidget {
  TitleSubTitle(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.spaceBetween,
      this.crossAxisAlignment,
      this.titleSize,
      this.subTitleSize,
      this.titleAlign})
      : super(key: key);
  late final String title;
  late final double? spaceBetween;
  late final String subTitle;
  late final CrossAxisAlignment? crossAxisAlignment;
  late  final double? titleSize;
  late final double? subTitleSize;
  late final TextAlign? titleAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: titleSize ?? 32.h,
                ),
            textAlign: titleAlign ?? TextAlign.left,
          ),
        ),
        SizedBox(
          height: spaceBetween ?? 8.h,
        ),
        Flexible(
          child: Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontSize: subTitleSize ?? 12.h),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
