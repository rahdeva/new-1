import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tembang_bali/feature/sekar/sekar_alit/sekar_alit_controller.dart';
import 'package:tembang_bali/feature/sekar/sekar_alit/widgets/sekar_alit_items.dart';
import 'package:tembang_bali/resources/resources.dart';

class ListSekarAlitBuilder extends StatelessWidget {
  const ListSekarAlitBuilder({
    super.key, 
    required this.controller, 
  });

  final SekarAlitController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.dataList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 0);
      },
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SekarAlitListItem(
              index: index,
              controller: controller,
              mData: controller.dataList[index],
            ),
            Visibility(
              visible: index != controller.dataList.length-1,
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