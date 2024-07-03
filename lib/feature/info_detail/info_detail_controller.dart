import 'package:get/get.dart';
import 'package:tembang_bali/model/sekar_rare.dart';

class InfoDetailController extends GetxController {
  SekarRare? songData;

  @override
  void onInit() {
    songData = Get.arguments;
    super.onInit();
  }
}
