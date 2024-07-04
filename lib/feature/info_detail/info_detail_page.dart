import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/data/remote/endpoint.dart';
import 'package:tembang_bali/feature/info_detail/info_detail_controller.dart';
import 'package:tembang_bali/utills/widget/button/back_button.dart';
import '/resources/resources.dart';

class InfoDetailPage extends StatelessWidget {
  const InfoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<InfoDetailController>(
          builder: (controller) {
            print(controller.songData?.image);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const BackButtonWidget(),
                const SizedBox(height: 40),
                Visibility(
                  visible: controller.songData?.image != null && controller.songData?.image != "",
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: CachedNetworkImage(
                      imageUrl: Environments.pocketBaseDevFiles(
                        collectionId: controller.songData!.collectionId!,
                        recordId: controller.songData!.id!,
                        fileName: controller.songData!.image!,
                      ),
                      imageBuilder: (context, imageProvider) => Container(
                        width: Get.width,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    controller.songData?.title ?? "-",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: HtmlWidget(
                    controller.songData?.history ?? "-",
                    textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

