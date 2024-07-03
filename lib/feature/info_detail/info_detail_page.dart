import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/info_detail/info_detail_controller.dart';
import 'package:tembang_bali/utills/widget/button/back_button.dart';
import '/resources/resources.dart';

class InfoDetailPage extends StatelessWidget {
  const InfoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<InfoDetailController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const BackButtonWidget(),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Info Detail",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

