import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_controller.dart';
import '/resources/resources.dart';

class SekarRarePage extends StatelessWidget {
  const SekarRarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: GetBuilder<SekarRareController>(
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Sekar Rare",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 32,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 50)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

