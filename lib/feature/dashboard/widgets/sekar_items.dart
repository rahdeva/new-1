import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_controller.dart';
import 'package:tembang_bali/model/sekar.dart';
import 'package:tembang_bali/resources/resources.dart';

class SekarListItem extends StatelessWidget {
  final int index;
  final DashboardController controller;
  final Sekar mData;

  const SekarListItem({
    super.key, 
    required this.index, 
    required this.controller, 
    required this.mData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(mData.route!);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mData.color
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                mData.image!,
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mData.title ?? "-",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    mData.desc ?? "-",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}