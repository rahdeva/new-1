import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/resources/resources.dart';
import 'package:tembang_bali/routes/page_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(PageName.INTRODUCTION);
    });

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: AppImages.imgLogo.image(
          width: 150,
          height: 135
        ),
      ),
    );
  }
}

