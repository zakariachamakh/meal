import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meal_monkey/constances/colors.dart';
import 'package:meal_monkey/models/onboarding.dart';
import 'package:meal_monkey/views/components/CustomElevatedBotton.dart';
import 'package:meal_monkey/views/components/tutle_subtitle.dart';
import 'package:meal_monkey/views/pages/welcome.dart';
import 'package:page_indicator/page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<OnBoardingModel> _onBoardings = [
    OnBoardingModel(
        title: 'Find Food You Love',
        subTitle:
            'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
        image: 'assets/images/onboarding/find_food.png'),
    OnBoardingModel(
        title: 'Fast Delivery',
        subTitle: 'Fast food delivery to your home, \n office wherever you are',
        image: 'assets/images/onboarding/delever.png'),
    OnBoardingModel(
        title: 'Live Tracking',
        subTitle:
            'Real time tracking of your food on the app \n once you placed the order',
        image: 'assets/images/onboarding/order.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageIndicatorContainer(
            length: _onBoardings.length,
            align: IndicatorAlign.center,
            indicatorSpace: 10.0,
            indicatorSelectorColor: ColorApp.MAIN,
            indicatorColor: ColorApp.PLACEHOLDER.withOpacity(0.4),
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      _onBoardings[index].image,
                      fit: BoxFit.cover,
                      height: 0.45.sh,
                    ),
                    SizedBox(
                      height: 78.h,
                    ),
                    TitleSubTitle(
                        title: _onBoardings[index].title,
                        titleSize: 24.h,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        subTitleSize: 12.h,
                        spaceBetween: 24.h,
                        subTitle: _onBoardings[index].subTitle),
                  ],
                );
              },
              itemCount: _onBoardings.length,
            ),
          ),
          Transform.translate(
            offset: Offset(0, -36.h),
            child: CustomElevatedButton(
              title: Text('Next'),
              callback: () {
                Get.to(Welcome());
              },
            ),
          ),
        ],
      ),
    );
  }
}
