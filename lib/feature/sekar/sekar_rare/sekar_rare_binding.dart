import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_controller.dart';

class SekarRareBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SekarRareController>(SekarRareController());
  }
}
