import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/sekar_agung_controller.dart';

class SekarAgungBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SekarAgungController>(SekarAgungController());
  }
}
