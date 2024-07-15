import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/controller/onboarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnBoardingPrevButton extends StatelessWidget {
  const OnBoardingPrevButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        child: const Icon(
          Iconsax.arrow_left_14,
        ),
        onPressed: () => OnBoardingController.instance.prevPage(),
      ),
    );
  }
}
