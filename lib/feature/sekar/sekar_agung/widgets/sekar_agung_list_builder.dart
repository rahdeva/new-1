import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/sekar_agung_controller.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/widgets/sekar_agung_items.dart';
import 'package:tembang_bali/resources/resources.dart';

class ListSekarAgungBuilder extends StatelessWidget {
  const ListSekarAgungBuilder({
    Key? key, 
    required this.controller, 
  }) : super(key: key);

  final SekarAgungController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.dataListSekarAgung.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 0);
      },
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SekarAgungListItem(
              index: index,
              controller: controller,
              mData: controller.dataListSekarAgung[index],
            ),
            Visibility(
              visible: index != controller.dataListSekarAgung.length-1,
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                child: AppImages.imgListDivider.image(),
              ),
            ),
          ],
        );
      },
    );
  }
}