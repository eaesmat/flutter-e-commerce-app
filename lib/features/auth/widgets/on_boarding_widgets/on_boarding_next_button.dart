import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/controller/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.light : null,
        ),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? TColors.dark : null,
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
      ),
    );
  }
}
