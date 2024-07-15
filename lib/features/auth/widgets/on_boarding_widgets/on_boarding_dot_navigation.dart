import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/auth/controller/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 120,
        left: TSizes.defaultSpace ,
        right: TSizes.defaultSpace,
        child: 
        Align(
          
      child: SmoothPageIndicator(
        effect: const ExpandingDotsEffect(
            activeDotColor: TColors.primary, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    ));
  }
}
