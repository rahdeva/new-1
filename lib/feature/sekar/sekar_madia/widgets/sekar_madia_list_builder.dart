import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/sekar_madia_controller.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/widgets/sekar_madia_items.dart';
import 'package:tembang_bali/resources/resources.dart';
import 'package:tembang_bali/utills/widget/expansion_tile_widget.dart';

class ListSekarMadiaBuilder extends StatelessWidget {
  const ListSekarMadiaBuilder({
    super.key, 
    required this.controller, 
  });

  final SekarMadiaController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTileWidget(
              title: "Kidung Dewa Yadnya", 
              content: ListView.separated(
                itemCount: controller.dataListDewaYadnya.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 0);
                },
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SekarMadiaListItem(
                        index: index,
                        controller: controller,
                        mData: controller.dataListDewaYadnya[index],
                      ),
                      Visibility(
                        visible: index != controller.dataListDewaYadnya.length-1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: AppImages.imgListDivider.image(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Visibility(
                visible: controller.dataListBhutaYadnya.isNotEmpty,
                child: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: AppImages.imgListDivider.image(),
                ),
              ),
            ),
            Visibility(
              visible: controller.dataListBhutaYadnya.isNotEmpty,
              child: ExpansionTileWidget(
                title: "Kidung Bhuta Yadnya", 
                content: ListView.separated(
                  itemCount: controller.dataListBhutaYadnya.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SekarMadiaListItem(
                          index: index,
                          controller: controller,
                          mData: controller.dataListBhutaYadnya[index],
                        ),
                        Visibility(
                          visible: index != controller.dataListBhutaYadnya.length-1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: AppImages.imgListDivider.image(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Visibility(
                visible: controller.dataListManusaYadnya.isNotEmpty,
                child: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: AppImages.imgListDivider.image(),
                ),
              ),
            ),
            Visibility(
              visible: controller.dataListManusaYadnya.isNotEmpty,
              child: ExpansionTileWidget(
                title: "Kidung Manusa Yadnya", 
                content: ListView.separated(
                  itemCount: controller.dataListManusaYadnya.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SekarMadiaListItem(
                          index: index,
                          controller: controller,
                          mData: controller.dataListManusaYadnya[index],
                        ),
                        Visibility(
                          visible: index != controller.dataListManusaYadnya.length-1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: AppImages.imgListDivider.image(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Visibility(
                visible: controller.dataListRsiYadnya.isNotEmpty,
                child: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: AppImages.imgListDivider.image(),
                ),
              ),
            ),
            Visibility(
              visible: controller.dataListRsiYadnya.isNotEmpty,
              child: ExpansionTileWidget(
                title: "Kidung Rsi Yadnya", 
                content: ListView.separated(
                  itemCount: controller.dataListRsiYadnya.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SekarMadiaListItem(
                          index: index,
                          controller: controller,
                          mData: controller.dataListRsiYadnya[index],
                        ),
                        Visibility(
                          visible: index != controller.dataListRsiYadnya.length-1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: AppImages.imgListDivider.image(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Visibility(
                visible: controller.dataListPitraYadnya.isNotEmpty,
                child: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: AppImages.imgListDivider.image(),
                ),
              ),
            ),
            Visibility(
              visible: controller.dataListPitraYadnya.isNotEmpty,
              child: ExpansionTileWidget(
                title: "Kidung Pitra Yadnya", 
                content: ListView.separated(
                  itemCount: controller.dataListPitraYadnya.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SekarMadiaListItem(
                          index: index,
                          controller: controller,
                          mData: controller.dataListPitraYadnya[index],
                        ),
                        Visibility(
                          visible: index != controller.dataListPitraYadnya.length-1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: AppImages.imgListDivider.image(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}