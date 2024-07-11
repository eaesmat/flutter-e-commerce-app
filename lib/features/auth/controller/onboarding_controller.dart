import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/auth/screens/login/login_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update the current state
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update current  index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update the current index  and jump t the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
    Get.offAll(const LoginScreen());
  }
}
