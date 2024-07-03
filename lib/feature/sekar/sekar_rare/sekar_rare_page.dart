import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_controller.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/widgets/sekar_rare_list_builder.dart';
import 'package:tembang_bali/utills/widget/button/back_button.dart';
import '/resources/resources.dart';

class SekarRarePage extends StatelessWidget {
  const SekarRarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SekarRareController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const BackButtonWidget(),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Sekar Rare",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 30,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ListSekarRareBuilder(
                  controller: controller
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

