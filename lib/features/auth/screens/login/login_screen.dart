import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/style/spacing_style.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_divider.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_form.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_header.dart';
import 'package:t_store/features/auth/widgets/login_widgets/login_social_button.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            const TLoginHeader(),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Form
            const TLoginForm(),
            // Divider
            TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Footer
            const TFormSocialButton()
          ],
        ),
      ),
    ));
  }
}
