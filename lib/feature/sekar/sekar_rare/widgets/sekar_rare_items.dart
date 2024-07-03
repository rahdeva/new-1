import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_controller.dart';
import 'package:tembang_bali/model/sekar_rare.dart';
import 'package:tembang_bali/resources/resources.dart';
import 'package:tembang_bali/routes/page_names.dart';
import 'package:tembang_bali/utills/widget/expansion_tile_widget.dart';

class SekarRareListItem extends StatelessWidget {
  final int index;
  final SekarRareController controller;
  final SekarRare mData;

  const SekarRareListItem({
    Key? key, 
    required this.index, 
    required this.controller, 
    required this.mData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTileWidget(
      title: mData.title ?? "-", 
      content: Column(
        children: [
          const SizedBox(height: 8),
          InkWell(
            onTap: (){
              Get.toNamed(
                PageName.INFO_DETAIL,
                arguments: mData
              );
            },
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.black,
                  child: HeroIcon(
                    HeroIcons.questionMarkCircle,
                    style: HeroIconStyle.outline, // Outlined icons are used by default.
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  "Sejarah",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          InkWell(
            onTap: (){
              Get.toNamed(
                PageName.PLAYER,
                arguments: mData
              );
            },
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.black,
                  child: HeroIcon(
                    HeroIcons.playCircle,
                    style: HeroIconStyle.outline, // Outlined icons are used by default.
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  "Audio Tembang",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}