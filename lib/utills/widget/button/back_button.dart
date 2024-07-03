import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:tembang_bali/resources/resources.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            const HeroIcon(
              HeroIcons.arrowLongLeft,
              style: HeroIconStyle.outline, // Outlined icons are used by default.
              color: Colors.black,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              'Kembali',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}

