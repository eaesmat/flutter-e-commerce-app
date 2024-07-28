import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/style/spacing_style.dart';
import 'package:t_store/features/auth/screens/verification_success_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            THelperFunctions.isDarkMode(context) ? null : TColors.primary,
        leading: Container(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: TColors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: THelperFunctions.isDarkMode(context)
                    ? null
                    : TColors.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(TSizes.borderRadiusXl),
                  bottomRight: Radius.circular(TSizes.borderRadiusXl),
                ),
              ),
              child: const Image(
                image: AssetImage(
                  
                  TImages.deliveredEmailIllustration,
                ),
              ),
            ),
            Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  Text(
                    TTexts.verifyEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Text(
                    TTexts.verifyEmailMessage,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const EmailVerificationSuccessScreen()  ),
                      child: const Text(TTexts.tContinue),
                    ),
                  ),
                  // const SizedBox(height: TSizes.spaceBtwItems),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Iconsax.refresh))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
