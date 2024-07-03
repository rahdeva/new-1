import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/sekar_madia_controller.dart';
import 'package:tembang_bali/routes/page_names.dart';
import '/utills/widget/button/primary_button.dart';
import '/resources/resources.dart';

class SekarMadiaPage extends StatelessWidget {
  const SekarMadiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SekarMadiaController>(
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Selamat Datang",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 32,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: AppImages.imgIntroduction.image(
                      width: Get.width,
                      fit: BoxFit.fitWidth
                    ),
                  ),
                  const SizedBox(height: 50),
                  PrimaryButtonWidget(
                    buttonText: "Masuk ke Aplikasi",
                    borderRadius: 50,
                    customColors: Colors.black,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    onPressed: () async {
                      Get.offAllNamed(PageName.DASHBOARD);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

