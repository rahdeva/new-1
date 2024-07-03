import 'package:get/get.dart';
import 'package:tembang_bali/feature/info_detail/info_detail_controller.dart';

class InfoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<InfoDetailController>(InfoDetailController());
  }
}
