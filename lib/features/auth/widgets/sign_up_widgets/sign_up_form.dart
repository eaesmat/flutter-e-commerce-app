import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/screens/email_verification_screen.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(TTexts.firstName)),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(TTexts.lastName)),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_add), label: Text(TTexts.username)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct5), label: Text(TTexts.email)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.mobile), label: Text(TTexts.phoneNo)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check5),
              label: Text(TTexts.password)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const EmailVerificationScreen()),
              child: const Text(TTexts.createAccount)),
        ),
      ],
    );
  }
}
