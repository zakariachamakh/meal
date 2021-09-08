import 'package:flutter/material.dart';
import 'package:meal_monkey/constances/colors.dart';

class TextAction extends StatelessWidget {
  TextAction(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.text,
      required this.textAction,
      required this.callback,
      this.textSize = 16,
      this.textActionSize = 16})
      : super(key: key);
  late final MainAxisAlignment mainAxisAlignment;
  late final String text;
  late final String textAction;
  late final VoidCallback? callback;
  late final double textSize;
  late final double textActionSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: textSize,
                wordSpacing: 1,
                letterSpacing: 1.2,
                color: ColorApp.PRIMARY_FONT),
          ),
        ),
        Flexible(
          child: TextButton(
            onPressed: callback,
            child: Text(
              textAction,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: textActionSize, color: ColorApp.MAIN),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
