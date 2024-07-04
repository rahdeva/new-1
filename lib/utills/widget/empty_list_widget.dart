import 'package:flutter/material.dart';
import 'package:tembang_bali/resources/resources.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImages.illEmpty.image(
                height: 200
              ),
              const SizedBox(height: 40),
              Text(
                "List Kosong!",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Tidak ada File atau dokumen yang tersedia saat ini.",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
  }
}

