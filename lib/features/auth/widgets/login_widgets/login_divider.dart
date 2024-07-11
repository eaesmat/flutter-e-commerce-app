import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TFormDivider extends StatelessWidget {
  final String dividerText;
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: Divider(
              color: TColors.grey, thickness: 0.5, indent: 60, endIndent: 5),
        ),
        Text(dividerText),
        const Flexible(
          child: Divider(
              color: TColors.grey, thickness: 0.5, indent: 5, endIndent: 60),
        ),
      ],
    );
  }
}
