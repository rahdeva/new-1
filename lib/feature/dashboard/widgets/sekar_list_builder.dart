import 'package:flutter/material.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_controller.dart';
import 'package:tembang_bali/feature/dashboard/widgets/sekar_items.dart';

class ListSekarBuilder extends StatelessWidget {
  const ListSekarBuilder({
    Key? key, 
    required this.controller, 
  }) : super(key: key);

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.dataListSekar.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
      itemBuilder: (context, index) {
        return SekarListItem(
          index: index,
          controller: controller,
          mData: controller.dataListSekar[index],
        );
      },
    );
  }
}