import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/sekar_agung_controller.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/widgets/sekar_agung_list_builder.dart';
import 'package:tembang_bali/utills/widget/button/back_button.dart';
import '/resources/resources.dart';

class SekarAgungPage extends StatelessWidget {
  const SekarAgungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SekarAgungController>(
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
                    "Sekar Agung",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 30,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ListSekarAgungBuilder(
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