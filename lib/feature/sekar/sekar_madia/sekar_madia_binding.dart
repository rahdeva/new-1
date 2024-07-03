import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/sekar_madia_controller.dart';

class SekarMadiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SekarMadiaController>(SekarMadiaController());
  }
}
