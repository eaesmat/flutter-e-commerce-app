import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSignUpHeader extends StatelessWidget {
  const TSignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 130,
          image: AssetImage(
            dark ? TImages.lightAppLogo : TImages.darkAppLogo,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text(
          TTexts.signupTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
