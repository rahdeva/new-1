import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tembang_bali/resources/resources.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget(
      {super.key,
      required this.title,
      required this.content,
      });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          ExpansionTile(
            textColor: AppColors.black,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
            iconColor: AppColors.black,
            childrenPadding: const EdgeInsets.only(bottom: 12),
            tilePadding: EdgeInsets.zero,
            title: Row(
              children: [
                Text(
                  title.tr,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: AppColors.black,
                  ),
                )
              ],
            ),
            children: [
              content
            ],
          ),
        ],
      ),
    );
  }
}
