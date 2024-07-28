import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/style/spacing_style.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_divider.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_social_button.dart';
import 'package:t_store/features/auth/widgets/sign_up_widgets/sign_up_form.dart';
import 'package:t_store/features/auth/widgets/sign_up_widgets/sign_up_header.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TSignUpHeader(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Footer
              const TFormSocialButton(
                btnTitle: TTexts.loginWithGoogle,
                btnIcon: TImages.google,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TFormSocialButton(
                btnTitle: TTexts.loginWithFacebook,
                btnIcon: TImages.facebook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
