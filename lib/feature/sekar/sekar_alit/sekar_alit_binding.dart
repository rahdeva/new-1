import 'package:get/get.dart';
import 'package:tembang_bali/feature/sekar/sekar_alit/sekar_alit_controller.dart';

class SekarAlitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SekarAlitController>(SekarAlitController());
  }
}
