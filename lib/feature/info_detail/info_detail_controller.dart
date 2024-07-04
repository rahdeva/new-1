import 'package:get/get.dart';
import 'package:tembang_bali/model/song.dart';

class InfoDetailController extends GetxController {
  Song? songData;

  @override
  void onInit() {
    songData = Get.arguments;
    super.onInit();
  }
}
