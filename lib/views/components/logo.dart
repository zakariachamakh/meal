import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo/logo.png',
      fit: BoxFit.cover,
      semanticLabel: 'The is logo MealMonkey',
      filterQuality: FilterQuality.high,
    );
  }
}
