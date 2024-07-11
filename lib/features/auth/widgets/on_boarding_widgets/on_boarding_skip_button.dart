import 'package:flutter/material.dart';
import 'package:t_store/features/auth/controller/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: dark ? TColors.light : TColors.primary),
        onPressed: () => controller.skipPage(),
        child: Text(
          'Skip',
          style: TextStyle(color: dark ? TColors.dark : TColors.light),
        ),
      ),
    );
  }
}
