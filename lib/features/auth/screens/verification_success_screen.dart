import 'package:flutter/material.dart';
import 'package:t_store/common/style/spacing_style.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class EmailVerificationSuccessScreen extends StatelessWidget {
  const EmailVerificationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            THelperFunctions.isDarkMode(context) ? null : TColors.primary,
        leading: Container(),
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
                  TImages.staticSuccessIllustration,
                ),
              ),
            ),
            Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  Text(
                    TTexts.yourAccountCreatedTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Text(
                    TTexts.yourAccountCreatedSubTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TTexts.tContinue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
