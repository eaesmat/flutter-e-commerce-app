import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TFormSocialButton extends StatelessWidget {
  final String btnIcon;
  final String btnTitle;
  const TFormSocialButton({
    super.key,
    required this.btnIcon,
    required this.btnTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: TSizes.xl,
              image: AssetImage(
                btnIcon,
              ),
            ),
            Text(btnTitle),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
