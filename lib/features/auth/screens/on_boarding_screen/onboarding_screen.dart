import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/auth/controller/onboarding_controller.dart';
import 'package:t_store/features/auth/widgets/on_boarding_widgets/on_boarding_dot_navigation.dart';
import 'package:t_store/features/auth/widgets/on_boarding_widgets/on_boarding_next_button.dart';
import 'package:t_store/features/auth/widgets/on_boarding_widgets/on_boarding_page.dart';
import 'package:t_store/features/auth/widgets/on_boarding_widgets/on_boarding_prev_button.dart';
import 'package:t_store/features/auth/widgets/on_boarding_widgets/on_boarding_skip_button.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          // onBoarding pages
          PageView(
            onPageChanged: controller.updatePageIndicator,
            controller: controller.pageController ,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // onBoarding skip  button
          const OnBoardingSkipButton(),
          // onBoarding page indicator
          const OnBoardingDotNavigation(),
          //  Next Circular button
          const OnBoardingNextButton(),
          const OnBoardingPrevButton(),
        ],
      ),
    );
  }
}
