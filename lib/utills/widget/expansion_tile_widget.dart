import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';
import 'package:tembang_bali/resources/resources.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget(
      {super.key,
      required this.title,
      this.withIcon = false,
      required this.content,
      });

  final String title;
  final bool withIcon;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: withIcon
      ? const EdgeInsets.symmetric(horizontal: 0)
      : const EdgeInsets.symmetric(horizontal: 24),
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
                withIcon
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeroIcon(
                          HeroIcons.bookmarkSquare,
                          style: HeroIconStyle.outline, // Outlined icons are used by default.
                          color: Colors.black,
                          size: 20,
                        ),
                      SizedBox(width:4),
                    ],
                  )
                : const SizedBox(),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppColors.black,
                    fontWeight: withIcon ? FontWeight.w500 : FontWeight.w700
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
