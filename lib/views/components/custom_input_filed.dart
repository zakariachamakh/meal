import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constances/colors.dart';

class CustomInputFiled extends StatelessWidget {
  CustomInputFiled(
      {Key? key,
      required this.placeHolder,
      this.onChanged,
      this.onTap,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.validator,
      this.obscureText,
      this.autofocus,
      this.prefixIcon})
      : super(key: key);
  late final String placeHolder;
  late final ValueChanged<String>? onChanged;
  late final GestureTapCallback? onTap;
  late final VoidCallback? onEditingComplete;
  late final ValueChanged<String>? onFieldSubmitted;
  late final FormFieldSetter<String>? onSaved;
  late final FormFieldValidator<String>? validator;
  late final bool? obscureText;
  late final bool? autofocus;
  late final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
        fillColor: ColorApp.PLACEHOLDER.withOpacity(0.2),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32.r),
          ),
        ),
        labelText: placeHolder,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32.r),
          ),
        ),
        prefixIcon: prefixIcon ?? SizedBox(),
      ),
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText ?? false,
      autofocus: autofocus ?? false,
    );
  }
}
