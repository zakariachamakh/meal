import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constances/colors.dart';

class SquerInput extends StatelessWidget {
  SquerInput(
      {Key? key,
      this.placeHolder = '*',
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.validator,
      this.autofocus})
      : super(key: key);

  late final String placeHolder;
  late final ValueChanged<String>? onChanged;
  late final VoidCallback? onEditingComplete;
  late final ValueChanged<String>? onFieldSubmitted;
  late final FormFieldSetter<String>? onSaved;
  late final FormFieldValidator<String>? validator;
  late final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      width: 58.w,
      child: Stack(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: ColorApp.PLACEHOLDER.withOpacity(0.2),
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              alignLabelWithHint: true,
              labelStyle: TextStyle(fontSize: 36.h),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.r),
                ),
              ),
            ),
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autofocus: autofocus ?? false,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              placeHolder.toString(),
              style: TextStyle(
                fontSize: 28.h,
                color: ColorApp.PLACEHOLDER,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
