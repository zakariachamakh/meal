import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meal_monkey/constances/colors.dart';
import 'package:meal_monkey/views/pages/onboarding/onboarding.dart';

void main() => runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
    MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        // locale: DevicePreview.locale(context),
        // // Add the locale here
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorApp.MAIN,
        ),
        home: Scaffold(
          body: OnBoarding(),
        ),
      ),
    );
  }
}
