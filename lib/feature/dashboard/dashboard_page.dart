import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_controller.dart';
import 'package:tembang_bali/feature/dashboard/widgets/sekar_list_builder.dart';
import '/resources/resources.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<DashboardController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 50),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Tembang Bali",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 32,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListSekarBuilder(
                    controller: controller
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

